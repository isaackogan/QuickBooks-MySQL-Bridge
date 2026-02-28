#!/usr/bin/env bash
set -euo pipefail

# QBD-Bridge database dump script (macOS / Linux)
# Connects to the bridge and exports the full QB database to a .sql file.
# Supports checkpointing: each table is dumped individually so a crash
# can be resumed without re-dumping already-completed tables.
#
# Usage:
#   bash dump.sh                          # dump everything
#   bash dump.sh --skip-audit             # skip audit/history tables
#   bash dump.sh --skip-table FOO BAR     # skip specific tables
#   bash dump.sh --resume <checkpoint>    # resume a previous crashed dump

# --- Parse arguments ---
SKIP_AUDIT=false
SKIP_TABLES=()
RESUME_DIR=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        --skip-audit)
            SKIP_AUDIT=true
            shift
            ;;
        --skip-table)
            shift
            while [[ $# -gt 0 && ! "$1" =~ ^-- ]]; do
                SKIP_TABLES+=("$1")
                shift
            done
            ;;
        --resume)
            shift
            if [[ $# -eq 0 ]]; then
                echo "ERROR: --resume requires a checkpoint directory path"
                exit 1
            fi
            RESUME_DIR="$1"
            shift
            ;;
        -h|--help)
            echo "Usage: bash dump.sh [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --skip-audit           Skip large audit/history tables"
            echo "  --skip-table T1 T2...  Skip specific tables by name"
            echo "  --resume <dir>         Resume from a checkpoint directory"
            echo "  -h, --help             Show this help"
            exit 0
            ;;
        *)
            echo "Unknown option: $1 (use --help for usage)"
            exit 1
            ;;
    esac
done

# --- Check for mysqldump ---
if ! command -v mysqldump &>/dev/null; then
    echo "ERROR: mysqldump is not installed."
    echo ""
    case "$(uname -s)" in
        Darwin*)
            echo "Install with Homebrew:"
            echo "  brew install mysql-client"
            echo "  echo 'export PATH=\"/opt/homebrew/opt/mysql-client/bin:\$PATH\"' >> ~/.zshrc"
            ;;
        Linux*)
            echo "Install with your package manager:"
            echo "  sudo apt-get install mysql-client"
            echo "  # or"
            echo "  sudo yum install mysql"
            ;;
    esac
    exit 1
fi

# --- Check for mysql client (needed to discover database name) ---
if ! command -v mysql &>/dev/null; then
    echo "ERROR: mysql client is not installed (needed to discover the database name)."
    exit 1
fi

# --- Interactive wizard (or restore from checkpoint config) ---
echo "=== QBD-Bridge Database Dump ==="
echo ""

if [[ -n "$RESUME_DIR" ]]; then
    # Resuming: load connection info from checkpoint
    if [[ ! -d "$RESUME_DIR" ]]; then
        echo "ERROR: Checkpoint directory not found: $RESUME_DIR"
        exit 1
    fi
    if [[ ! -f "$RESUME_DIR/.config" ]]; then
        echo "ERROR: No .config file in checkpoint directory (corrupted checkpoint?)"
        exit 1
    fi
    echo "Resuming from checkpoint: $RESUME_DIR"
    source "$RESUME_DIR/.config"
    echo "  Host:     $HOST"
    echo "  Port:     $PORT"
    echo "  User:     $USERNAME"
    echo "  Database: $DB_NAME"
    echo ""
else
    read -rp "Host [127.0.0.1]: " HOST
    HOST="${HOST:-127.0.0.1}"

    read -rp "Port [3306]: " PORT
    PORT="${PORT:-3306}"

    read -rp "Username [Admin]: " USERNAME
    USERNAME="${USERNAME:-Admin}"

    read -rsp "Password []: " PASSWORD
    echo ""
    PASSWORD="${PASSWORD:-}"

    # --- Discover database name ---
    echo ""
    echo "Connecting to discover database name..."

    DB_NAME=$(mysql -h "$HOST" -P "$PORT" -u "$USERNAME" --password="$PASSWORD" \
        --ssl-mode=REQUIRED --enable-cleartext-plugin \
        --skip-column-names --batch -e "SELECT DATABASE()" 2>/dev/null)

    if [ -z "$DB_NAME" ] || [ "$DB_NAME" = "NULL" ]; then
        echo "ERROR: Could not determine database name. Is the bridge running?"
        exit 1
    fi

    echo "Found database: ${DB_NAME}"
fi

# --- Build skip-table set ---
SKIP_SET=()

if [ "$SKIP_AUDIT" = true ]; then
    AUDIT_TABLES=(
        abmc_audit_event
        abmc_audit_header
        abmc_audit_lineitem
        abmc_tsafe
    )
    for t in "${AUDIT_TABLES[@]}"; do
        SKIP_SET+=("$t")
    done
    echo "Skipping audit tables: ${AUDIT_TABLES[*]}"
fi

if [ ${#SKIP_TABLES[@]} -gt 0 ]; then
    for t in "${SKIP_TABLES[@]}"; do
        SKIP_SET+=("$t")
    done
    echo "Skipping tables: ${SKIP_TABLES[*]}"
fi

# --- Common mysqldump connection + compatibility args ---
DUMP_CONN=(
    -h "$HOST"
    -P "$PORT"
    -u "$USERNAME"
    --password="$PASSWORD"
    --ssl-mode=REQUIRED
    --enable-cleartext-plugin
    --set-gtid-purged=OFF
    --skip-lock-tables
    --single-transaction
    --no-tablespaces
)

# --- Set up checkpoint directory ---
if [[ -n "$RESUME_DIR" ]]; then
    CHECKPOINT_DIR="$RESUME_DIR"
else
    CHECKPOINT_DIR="qb-dump-checkpoint-$(date +%Y%m%d-%H%M%S)"
    mkdir -p "$CHECKPOINT_DIR"

    # Save connection config for resume (password stored so resume works without re-prompting)
    cat > "$CHECKPOINT_DIR/.config" <<CFGEOF
HOST=$(printf '%q' "$HOST")
PORT=$(printf '%q' "$PORT")
USERNAME=$(printf '%q' "$USERNAME")
PASSWORD=$(printf '%q' "$PASSWORD")
DB_NAME=$(printf '%q' "$DB_NAME")
CFGEOF
    chmod 600 "$CHECKPOINT_DIR/.config"
fi

echo ""
echo "Checkpoint directory: $CHECKPOINT_DIR"
echo "(Resume a crashed dump with: bash dump.sh --resume $CHECKPOINT_DIR)"
echo ""

# --- Get list of tables ---
echo "Fetching table list..."

ALL_TABLES=$(mysql -h "$HOST" -P "$PORT" -u "$USERNAME" --password="$PASSWORD" \
    --ssl-mode=REQUIRED --enable-cleartext-plugin \
    --skip-column-names --batch -e \
    "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = '${DB_NAME}'" 2>/dev/null)

if [ -z "$ALL_TABLES" ]; then
    echo "ERROR: No tables found in database $DB_NAME"
    exit 1
fi

# --- Build --ignore-table flags ---
# Combine user-skipped tables + already-checkpointed tables
IGNORE_ARGS=()

# Skip user-requested tables (case-insensitive match against actual table names)
SKIPPED_NAMES=()
while IFS= read -r table; do
    table_lower="$(printf '%s' "$table" | tr '[:upper:]' '[:lower:]')"
    for s in "${SKIP_SET[@]+"${SKIP_SET[@]}"}"; do
        s_lower="$(printf '%s' "$s" | tr '[:upper:]' '[:lower:]')"
        if [[ "$table_lower" == "$s_lower" ]]; then
            IGNORE_ARGS+=("--ignore-table=${DB_NAME}.${table}")
            SKIPPED_NAMES+=("$table")
            break
        fi
    done
done <<< "$ALL_TABLES"

# Skip already-checkpointed tables (from a previous run)
DONE_COUNT=0
for done_file in "$CHECKPOINT_DIR"/.*.done; do
    [[ -f "$done_file" ]] || continue
    tname="$(basename "$done_file" .done)"
    tname="${tname#.}"
    IGNORE_ARGS+=("--ignore-table=${DB_NAME}.${tname}")
    DONE_COUNT=$((DONE_COUNT + 1))
done

# Count totals
TOTAL_ALL=$(echo "$ALL_TABLES" | wc -l | tr -d ' ')
TOTAL_SKIPPED=${#SKIPPED_NAMES[@]}
TOTAL=$((TOTAL_ALL - TOTAL_SKIPPED))
REMAINING=$((TOTAL - DONE_COUNT))

echo "Tables: $TOTAL_ALL total, $TOTAL_SKIPPED skipped, $DONE_COUNT checkpointed, $REMAINING to dump."
echo ""

if [[ $REMAINING -eq 0 ]]; then
    echo "All tables already checkpointed!"
else
    # --- Run mysqldump for entire database, split output by table ---
    echo "Running mysqldump (full database, streaming split by table)..."
    echo ""

    set +eo pipefail
    mysqldump \
        "${DUMP_CONN[@]}" \
        --verbose \
        ${IGNORE_ARGS[@]+"${IGNORE_ARGS[@]}"} \
        --databases "$DB_NAME" \
    | awk -v dir="$CHECKPOINT_DIR" '
        # Detect table boundary: "-- Table structure for table `name`"
        /^-- Table structure for table/ {
            # Previous table is now complete — mark it done
            if (current_table != "") {
                close(current_file)
                cmd = "touch \"" dir "/." current_table ".done\""
                system(cmd)
                count++
                printf "[%d] %s - done\n", count, current_table > "/dev/stderr"
            }
            # Extract table name between backticks
            line = $0
            sub(/.*`/, "", line)
            sub(/`.*/, "", line)
            current_table = line
            current_file = dir "/" current_table ".sql"
            in_table = 1
        }
        {
            if (in_table) {
                print > current_file
            } else {
                print > dir "/000-preamble.sql"
            }
        }
        END {
            if (current_table != "") {
                close(current_file)
                cmd = "touch \"" dir "/." current_table ".done\""
                system(cmd)
                count++
                printf "[%d] %s - done\n", count, current_table > "/dev/stderr"
            }
            close(dir "/000-preamble.sql")
        }
    '
    DUMP_EXIT=${PIPESTATUS[0]}
    set -eo pipefail

    echo ""
    if [[ $DUMP_EXIT -ne 0 ]]; then
        echo "ERROR: mysqldump failed (exit code $DUMP_EXIT)."
        echo "Some tables may have been saved. Resume with:"
        echo "  bash dump.sh --resume $CHECKPOINT_DIR"
        exit 1
    fi
fi

# --- Assemble final output file ---
OUTFILE="qb-dump-$(date +%Y-%m-%d).sql"
echo "Assembling final dump: $OUTFILE"

{
    # Preamble (CREATE DATABASE, USE, SET statements)
    if [[ -f "$CHECKPOINT_DIR/000-preamble.sql" ]]; then
        cat "$CHECKPOINT_DIR/000-preamble.sql"
    fi
    # Each table in the order returned by the database
    while IFS= read -r table; do
        if [[ -f "$CHECKPOINT_DIR/${table}.sql" ]]; then
            cat "$CHECKPOINT_DIR/${table}.sql"
        fi
    done <<< "$ALL_TABLES"
} > "$OUTFILE"

echo "Done! Dump saved to ${OUTFILE}"
echo ""

# --- Clean up checkpoint directory ---
read -rp "Remove checkpoint directory? [Y/n]: " CLEANUP
CLEANUP="${CLEANUP:-Y}"
if [[ "$CLEANUP" =~ ^[Yy]$ ]]; then
    rm -rf "$CHECKPOINT_DIR"
    echo "Checkpoint directory removed."
else
    echo "Checkpoint kept at: $CHECKPOINT_DIR"
fi
