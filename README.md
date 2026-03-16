# QuickBooks-MySQL-Bridge

Access QuickBooks Desktop (`.qbw`) data through any MySQL client.

QBD-Bridge runs a Docker container with SQL Anywhere 17 (which reads `.qbw` files natively) and a Python MySQL wire-protocol proxy. Connect with any MySQL client or driver — the proxy translates on the fly.

> [!WARNING]
> **Do not use your original `.qbw` file.** Always work with a **copy**. Opening a `.qbw` file with SQL Anywhere can modify internal metadata, which may break compatibility with QuickBooks Desktop.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- `mysqldump` or `mariadb-dump` (only needed for the dump scripts)

## Quick Start

### 1. Pull or build the image

**Pull the pre-built image:**

```bash
docker pull isaackogan/quickbooks-desktop-mysql-bridge:v0.0.2
```

**Or build locally:**

```bash
cd qbd-bridge
bash build.sh
```

To include a MySQL or MariaDB client inside the container (for running `dump.sh` from within):

```bash
docker build --build-arg DB_CLIENT=mariadb -t isaackogan/quickbooks-desktop-mysql-bridge:v0.0.2 .
# or DB_CLIENT=mysql for the MySQL client
```

### 2. Configure

Place a **copy** of your `.qbw` file in `./dev/data/` and update `dev/docker-compose.yml`:

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

**MySQL client:**

```bash
mysql -h 127.0.0.1 -P 3306 -u Admin --password='' --ssl-mode=REQUIRED --enable-cleartext-plugin
```

**MariaDB client:**

```bash
LIBMYSQL_ENABLE_CLEARTEXT_PLUGIN=1 mariadb -h 127.0.0.1 -P 3306 -u Admin --password='' --ssl
```

> **Note:** The bridge requires cleartext passwords to derive SQL Anywhere credentials. MySQL uses `--enable-cleartext-plugin`; MariaDB uses the `LIBMYSQL_ENABLE_CLEARTEXT_PLUGIN=1` env var. SSL is always required.

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

Both scripts prompt for host, port, username, and password, then run `mysqldump` (or `mariadb-dump`) with the correct flags. The output file is named `qb-dump-YYYY-MM-DD.sql`.

The dump script auto-detects which client is installed. If you have both, it defaults to MySQL. Use `--mariadb` to force MariaDB mode.

**Options:**

| Flag                     | Description                                                                                                          |
|--------------------------|----------------------------------------------------------------------------------------------------------------------|
| `--mariadb`              | Force MariaDB client mode (`mariadb` / `mariadb-dump`)                                                               |
| `--schema-only`          | Dump table schemas only (no data)                                                                                    |
| `--skip-audit`           | Skip large audit/history tables (`abmc_audit_event`, `abmc_audit_header`, `abmc_audit_lineitem`, `abmc_tsafe`)       |
| `--skip-table T1 T2...`  | Skip specific tables by name                                                                                         |
| `--resume <dir>`         | Resume from a checkpoint directory                                                                                   |

```bash
# Skip audit tables (recommended for faster dumps)
bash scripts/dump.sh --skip-audit

# Use MariaDB client
bash scripts/dump.sh --mariadb

# Schema only, skip audit tables
bash scripts/dump.sh --schema-only --skip-audit

# Skip specific tables
bash scripts/dump.sh --skip-table abmc_invoice_lineitem abmc_audit_lineitem

# Resume a crashed dump
bash scripts/dump.sh --resume qb-dump-checkpoint-20260316-141500
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

## Docker Image

**Image:** `isaackogan/quickbooks-desktop-mysql-bridge:v0.0.2`

| Environment Variable | Description                          | Default     |
|----------------------|--------------------------------------|-------------|
| `QBW_FILE`           | Path to the `.qbw` file (required)   | —           |
| `SA17_SERVER_NAME`   | SA17 internal server name            | `qbbridge`  |
| `PROXY_HOST`         | Bind address for the MySQL proxy     | `0.0.0.0`   |
| `PROXY_PORT`         | Port for the MySQL proxy             | `3306`      |
| `DB_CLIENT`          | Set to `mariadb` for MariaDB mode in dump scripts | `none` |

**Build args:**

| Arg          | Description                                        | Default |
|--------------|----------------------------------------------------|---------|
| `DB_CLIENT`  | Install a DB client: `mariadb` or `mysql`          | `none`  |

## Limitations

- **Read-only** — only SELECT queries are supported
- **SQL dialect** — SA17 uses Transact-SQL; MySQL-specific functions won't work (use SA17 equivalents)
- **Single database** — `USE` is a no-op
- **Cleartext auth required** — MySQL: `--enable-cleartext-plugin`; MariaDB: `LIBMYSQL_ENABLE_CLEARTEXT_PLUGIN=1`
