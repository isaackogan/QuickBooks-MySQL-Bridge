# QuickBooks-MySQL-Bridge

Access QuickBooks Desktop (`.qbw`) data through any MySQL client.

QBD-Bridge runs a Docker container with SQL Anywhere 17 (which reads `.qbw` files natively) and a Python MySQL wire-protocol proxy. Connect with any MySQL client or driver — the proxy translates on the fly.

> [!WARNING]
> **Do not use your original `.qbw` file.** Always work with a **copy**. Opening a `.qbw` file with SQL Anywhere can modify internal metadata, which may break compatibility with QuickBooks Desktop.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- `mysqldump` (only needed for the dump scripts)

## Quick Start

### 1. Build the image

```bash
cd qbd-bridge
bash build.sh
```

### 2. Configure

Place your `.qbw` file in `./dev/data/` and update `dev/docker-compose.yml` if needed:

```yaml
environment:
  - QBW_FILE=/data/your-company.qbw
```

### 3. Run

```bash
cd dev
docker compose up -d
```

### 4. Connect

```bash
mysql -h 127.0.0.1 -P 3306 -u Admin --password='' --ssl-mode=REQUIRED --enable-cleartext-plugin
```

> **Note:** `--enable-cleartext-plugin` is required because the bridge needs the plaintext password to derive SQL Anywhere credentials. `--ssl-mode=REQUIRED` ensures the connection is encrypted.

## Dump Scripts

Export the entire QuickBooks database to a MySQL-compatible `.sql` file.

### macOS / Linux

```bash
bash scripts/dump.sh
```

### Windows

```bat
scripts\dump.bat
```

Both scripts prompt for host, port, username, and password, then run `mysqldump` with the correct flags. The output file is named `qb-dump-YYYY-MM-DD.sql`.

**Options:**

| Flag | Description |
|------|-------------|
| `--skip-audit` | Skip large audit/history tables (`abmc_audit_event`, `abmc_audit_header`, `abmc_audit_lineitem`, `abmc_tsafe`) |
| `--skip-table T1 T2...` | Skip specific tables by name |

```bash
# Skip audit tables (recommended for faster dumps)
bash scripts/dump.sh --skip-audit

# Skip specific tables
bash scripts/dump.sh --skip-table abmc_invoice_lineitem abmc_audit_lineitem

# Combine both
bash scripts/dump.sh --skip-audit --skip-table abmc_invoice_lineitem
```

## Default Credentials

QuickBooks uses **username `Admin`** with an **empty password** by default. If your QB file has a different user/password, pass them as the MySQL username and password.

## Architecture

```
MySQL Client  ──3306──>  mysql-mimic proxy (Python)
                              |
                              v
                         sqlanydb (ctypes)
                              |
                              v
                         dbeng17 (SA17) ──> .qbw file
```

1. **dbeng17** opens the `.qbw` file as a SQL Anywhere 17 database
2. **mysql-mimic** accepts MySQL wire-protocol connections on port 3306
3. The Python bridge translates MySQL auth to SA17 credentials, forwards queries, and returns results over the MySQL protocol

## Limitations

- **Read-only** — only SELECT queries are supported
- **SQL dialect** — SA17 uses Transact-SQL; MySQL-specific functions won't work (use SA17 equivalents)
- **Single database** — `USE` is a no-op
- **Cleartext auth required** — use `--enable-cleartext-plugin`
