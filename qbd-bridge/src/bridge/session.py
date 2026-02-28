import asyncio
import logging
import os
import re
import time
from functools import partial
from typing import Optional

from sqlglot import expressions as exp

from mysql_mimic import ResultColumn
from mysql_mimic.errors import MysqlError, ErrorCode
from mysql_mimic.schema import BaseInfoSchema, Column
from mysql_mimic.session import Session
from mysql_mimic.types import ColumnType

from .. import sa17_client
from . import schema as _schema
from .schema import (
    SCHEMA_SQL,
    INDEXES_SQL,
    FK_SQL,
    SCHEMA_CACHE_TTL,
    build_info_schema,
)
from .transforms import (
    CAST_NULL_RE,
    COMMENT_RE,
    SHOW_CREATE_RE,
    EXPLAIN_RE,
    transform_for_sa17,
    rewrite_offset_fetch,
)

logger = logging.getLogger(__name__)


class QBSession(Session):
    """A mysql-mimic Session that forwards data queries to SA17.

    Session (not BaseSession) handles all MySQL system queries automatically:
    @@variables, SET, SHOW VARIABLES, INFORMATION_SCHEMA, USE, etc.
    We override schema() so that SHOW TABLES, DESCRIBE, SHOW COLUMNS,
    and INFORMATION_SCHEMA queries return real metadata from SA17 -
    including indexes, primary keys and foreign keys.
    """

    def __init__(self, credential_store: dict, connection_pool: sa17_client.ConnectionPool):
        super().__init__()
        self.database = _schema.DATABASE_NAME
        self._credential_store = credential_store
        self._connection_pool = connection_pool
        self._sa17_conn = None
        self._sa17_creds: Optional[tuple[str, str]] = None
        self._schema_cache: Optional[BaseInfoSchema] = None
        self._schema_cache_time = 0.0

    # -- introspection -------------------------------------------------------

    # Statements that mysqldump and other clients send that we can safely no-op
    _NOOP_RE = re.compile(
        r"^\s*("
        r"LOCK\s+TABLES\b"
        r"|UNLOCK\s+TABLES\b"
        r"|FLUSH\b"
        r"|START\s+TRANSACTION\b"
        r"|BEGIN\b"
        r"|COMMIT\b"
        r"|ROLLBACK\b"
        r"|SAVEPOINT\b"
        r"|RELEASE\s+SAVEPOINT\b"
        r"|SET\b"
        r")",
        re.IGNORECASE,
    )

    async def handle_query(self, sql, attrs):
        """Catch sqlglot executor errors for functions it cannot evaluate."""
        sql = CAST_NULL_RE.sub("null", sql)
        clean = COMMENT_RE.sub("", sql).strip()

        # Silently no-op statements that mysqldump sends (SET, LOCK, FLUSH, etc.)
        if self._NOOP_RE.match(clean):
            return [], []

        # SHOW CREATE DATABASE -> return a simple CREATE DATABASE statement
        m_cdb = re.match(r"^\s*SHOW\s+CREATE\s+DATABASE\b.*?[`'\"]?(\w[\w-]*)[`'\"]?\s*;?\s*$", clean, re.IGNORECASE)
        if m_cdb:
            db = m_cdb.group(1)
            return (
                [(db, f"CREATE DATABASE /*!32312 IF NOT EXISTS*/ `{db}` /*!40100 DEFAULT CHARACTER SET utf8mb4 */")],
                [
                    ResultColumn(name="Database", type=ColumnType.VARCHAR),
                    ResultColumn(name="Create Database", type=ColumnType.VARCHAR),
                ],
            )

        # SHOW TABLE STATUS -> return table rows from SA17
        m_status = re.match(
            r"^\s*SHOW\s+TABLE\s+STATUS(?:\s+LIKE\s+'([^']*)')?\s*;?\s*$",
            clean, re.IGNORECASE,
        )
        if m_status:
            return await self._show_table_status(m_status.group(1))

        # SHOW FIELDS FROM / SHOW COLUMNS FROM -> return column info from SA17
        m_fields = re.match(
            r"^\s*SHOW\s+(?:FULL\s+)?(?:FIELDS|COLUMNS)\s+FROM\s+[`'\"]?(\w+)[`'\"]?",
            clean, re.IGNORECASE,
        )
        if m_fields:
            return await self._show_fields(m_fields.group(1))

        # SHOW TRIGGERS -> return empty with proper columns
        if re.match(r"^\s*SHOW\s+TRIGGERS\b", clean, re.IGNORECASE):
            return [], [
                ResultColumn(name="Trigger", type=ColumnType.VARCHAR),
                ResultColumn(name="Event", type=ColumnType.VARCHAR),
                ResultColumn(name="Table", type=ColumnType.VARCHAR),
                ResultColumn(name="Statement", type=ColumnType.VARCHAR),
                ResultColumn(name="Timing", type=ColumnType.VARCHAR),
                ResultColumn(name="Created", type=ColumnType.VARCHAR),
                ResultColumn(name="sql_mode", type=ColumnType.VARCHAR),
                ResultColumn(name="Definer", type=ColumnType.VARCHAR),
                ResultColumn(name="character_set_client", type=ColumnType.VARCHAR),
                ResultColumn(name="collation_connection", type=ColumnType.VARCHAR),
                ResultColumn(name="Database Collation", type=ColumnType.VARCHAR),
            ]

        # SHOW EVENTS -> return empty with proper columns
        if re.match(r"^\s*SHOW\s+EVENTS\b", clean, re.IGNORECASE):
            return [], [ResultColumn(name="Name", type=ColumnType.VARCHAR)]

        # SHOW PROCEDURE/FUNCTION STATUS -> return empty with proper columns
        if re.match(r"^\s*SHOW\s+(PROCEDURE|FUNCTION)\s+STATUS\b", clean, re.IGNORECASE):
            return [], [ResultColumn(name="Name", type=ColumnType.VARCHAR)]

        # SHOW CREATE TABLE -> synthesize DDL from SA17 metadata
        m = SHOW_CREATE_RE.match(clean)
        if m:
            return await self._show_create_table(m.group(1))

        # EXPLAIN -> not supported, return empty
        if EXPLAIN_RE.match(clean):
            return (
                [("QB Bridge does not support EXPLAIN / query plans",)],
                [ResultColumn(name="Note", type=ColumnType.VARCHAR)],
            )

        try:
            return await super().handle_query(sql, attrs)
        except Exception as e:
            error_msg = str(e)
            if "CURRENTVERSION" in error_msg:
                return (
                    [("8.0.0-qb-bridge",)],
                    [ResultColumn(name="VERSION()", type=ColumnType.VARCHAR)],
                )
            if "CURRENTSCHEMA" in error_msg:
                return (
                    [(self.database or _schema.DATABASE_NAME,)],
                    [ResultColumn(name="DATABASE()", type=ColumnType.VARCHAR)],
                )
            if "information_schema" in sql.lower():
                logger.warning("INFORMATION_SCHEMA query failed (sqlglot): %s", e)
                return [], []
            logger.error("Unhandled query error for SQL [%s]: %s", sql, e)
            raise

    async def schema(self) -> BaseInfoSchema | dict:
        """Provide full metadata so mysql-mimic can answer
        SHOW TABLES, DESCRIBE, SHOW COLUMNS, SHOW INDEX, and
        INFORMATION_SCHEMA queries - including FKs, PKs and indexes."""
        now = time.time()
        if self._schema_cache is not None and (now - self._schema_cache_time) < SCHEMA_CACHE_TTL:
            return self._schema_cache

        try:
            conn = await self._get_sa17_conn()
        except Exception as e:
            logger.error("Failed to connect to SA17 for schema: %s", e)
            return {}

        # ---- columns ----
        try:
            col_rows, _ = sa17_client.execute_query(conn, SCHEMA_SQL)
        except Exception as e:
            logger.error("Failed to load columns from SA17: %s", e)
            return {}

        columns: list[Column] = []
        table_count = set()
        for table_name, col_name, col_type in col_rows:
            table_count.add(table_name)
            columns.append(Column(
                name=col_name,
                type=col_type,
                table=table_name,
                schema=_schema.DATABASE_NAME,
                catalog="def",
            ))

        # ---- indexes (best effort) ----
        try:
            index_rows, _ = sa17_client.execute_query(conn, INDEXES_SQL)
        except Exception as e:
            logger.warning("Could not load indexes: %s", e)
            index_rows = []

        # ---- foreign keys (best effort) ----
        try:
            fk_rows, _ = sa17_client.execute_query(conn, FK_SQL)
        except Exception as e:
            logger.warning("Could not load foreign keys: %s", e)
            fk_rows = []

        result = build_info_schema(_schema.DATABASE_NAME, columns, index_rows, fk_rows)
        self._schema_cache = result
        self._schema_cache_time = now
        logger.info(
            "Loaded schema from SA17: %d tables, %d index entries, %d FK entries",
            len(table_count), len(index_rows), len(fk_rows),
        )
        return result

    # SA17 domain_name -> MySQL type mapping
    _SA17_TYPE_MAP = {
        "smallint": "smallint",
        "integer": "int",
        "int": "int",
        "bigint": "bigint",
        "tinyint": "tinyint",
        "numeric": "decimal",
        "decimal": "decimal",
        "float": "float",
        "double": "double",
        "real": "float",
        "money": "decimal(19,4)",
        "smallmoney": "decimal(10,4)",
        "date": "date",
        "time": "time",
        "datetime": "datetime",
        "smalldatetime": "datetime",
        "timestamp": "datetime",
        "bit": "tinyint(1)",
        "text": "longtext",
        "long varchar": "longtext",
        "long nvarchar": "longtext",
        "long binary": "longblob",
        "image": "longblob",
        "binary": "blob",
        "uniqueidentifier": "char(36)",
        "xml": "longtext",
    }

    @classmethod
    def _sa17_to_mysql_type(cls, domain_name: str, width, scale) -> str:
        """Convert an SA17 domain type to a MySQL-compatible type."""
        name_lower = domain_name.strip().lower()

        # Direct match
        if name_lower in cls._SA17_TYPE_MAP:
            mapped = cls._SA17_TYPE_MAP[name_lower]
            # Add precision for numeric types that have it
            if name_lower in ("numeric", "decimal") and width:
                return f"decimal({width},{scale or 0})"
            return mapped

        # varchar / char with width
        if "varchar" in name_lower or "nvarchar" in name_lower:
            w = width if width and width > 0 else 255
            return f"varchar({w})"
        if "char" in name_lower or "nchar" in name_lower:
            w = width if width and width > 0 else 255
            return f"char({w})"
        if "varbinary" in name_lower:
            w = width if width and width > 0 else 255
            return f"varbinary({w})"

        # Fallback: use as-is but add length for bare types
        if name_lower in ("varchar", "nvarchar"):
            return f"varchar({width or 255})"
        if name_lower in ("char", "nchar"):
            return f"char({width or 255})"

        return f"varchar(255)"

    async def _show_create_table(self, table_name: str):
        """Synthesize a CREATE TABLE statement from SA17 metadata."""
        conn = await self._get_sa17_conn()
        escaped_name = table_name.replace(chr(39), chr(39)+chr(39))
        sql = (
            "SELECT c.column_name, d.domain_name, c.\"nulls\", c.\"default\","
            " c.width, c.scale"
            " FROM sys.systabcol c"
            " JOIN sys.systab t ON c.table_id = t.table_id"
            " JOIN sys.sysdomain d ON c.domain_id = d.domain_id"
            f" WHERE t.table_name = '{escaped_name}'"
            " ORDER BY c.column_id"
        )
        rows, _ = sa17_client.execute_query(conn, sql)
        if not rows:
            raise MysqlError(
                f"Table '{table_name}' doesn't exist",
                code=ErrorCode.NO_SUCH_TABLE,
            )

        # Query primary key columns for this table
        pk_sql = (
            "SELECT c.column_name"
            " FROM sys.sysidx i"
            " JOIN sys.sysidxcol ic ON i.table_id = ic.table_id AND i.index_id = ic.index_id"
            " JOIN sys.systabcol c ON ic.table_id = c.table_id AND ic.column_id = c.column_id"
            " JOIN sys.systab t ON i.table_id = t.table_id"
            f" WHERE t.table_name = '{escaped_name}' AND i.index_category = 1"
            " ORDER BY ic.sequence"
        )
        try:
            pk_rows, _ = sa17_client.execute_query(conn, pk_sql)
        except Exception:
            pk_rows = []
        pk_columns = [r[0] for r in pk_rows]

        col_defs = []
        auto_inc_col = None
        for col_name, col_type, nulls, default, width, scale in rows:
            mysql_type = self._sa17_to_mysql_type(col_type, width, scale)
            d = f"  `{col_name}` {mysql_type}"
            if nulls == "N":
                d += " NOT NULL"
            if default:
                def_lower = str(default).strip().lower()
                if def_lower in ("autoincrement", "global autoincrement"):
                    d += " AUTO_INCREMENT"
                    auto_inc_col = col_name
                elif def_lower == "current timestamp":
                    d += " DEFAULT CURRENT_TIMESTAMP"
                elif def_lower == "current date":
                    d += " DEFAULT CURRENT_DATE"
                elif def_lower == "current time":
                    d += " DEFAULT CURRENT_TIME"
                elif def_lower == "newid()":
                    pass  # no MySQL equivalent, skip
                else:
                    d += f" DEFAULT {default}"
            col_defs.append(d)

        if pk_columns:
            col_defs.append(f"  PRIMARY KEY ({','.join(f'`{c}`' for c in pk_columns)})")
            # MySQL requires AUTO_INCREMENT to be first in a key;
            # if it's in a composite PK but not first, add a separate KEY
            if auto_inc_col and pk_columns[0] != auto_inc_col:
                col_defs.append(f"  KEY (`{auto_inc_col}`)")
        elif auto_inc_col:
            # No PK at all — MySQL requires AUTO_INCREMENT columns to be a key
            col_defs.append(f"  KEY (`{auto_inc_col}`)")

        ddl = f"CREATE TABLE `{table_name}` (\n" + ",\n".join(col_defs) + "\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4"
        return (
            [(table_name, ddl)],
            [
                ResultColumn(name="Table", type=ColumnType.VARCHAR),
                ResultColumn(name="Create Table", type=ColumnType.VARCHAR),
            ],
        )

    async def _show_table_status(self, like_pattern: Optional[str] = None):
        """Return SHOW TABLE STATUS rows from SA17 metadata."""
        conn = await self._get_sa17_conn()
        sql = (
            "SELECT t.table_name"
            " FROM sys.systab t"
            " JOIN sys.sysuser u ON u.user_id = t.creator"
            " WHERE t.table_type = 1"
            "   AND u.user_name NOT IN ('SYS', 'dbo', 'rs_systabgroup')"
        )
        if like_pattern:
            escaped = like_pattern.replace("'", "''").replace("\\", "")
            sql += f" AND t.table_name = '{escaped}'"
        sql += " ORDER BY t.table_name"
        table_rows, _ = sa17_client.execute_query(conn, sql)

        cols = [
            ResultColumn(name="Name", type=ColumnType.VARCHAR),
            ResultColumn(name="Engine", type=ColumnType.VARCHAR),
            ResultColumn(name="Version", type=ColumnType.VARCHAR),
            ResultColumn(name="Row_format", type=ColumnType.VARCHAR),
            ResultColumn(name="Rows", type=ColumnType.VARCHAR),
            ResultColumn(name="Avg_row_length", type=ColumnType.VARCHAR),
            ResultColumn(name="Data_length", type=ColumnType.VARCHAR),
            ResultColumn(name="Max_data_length", type=ColumnType.VARCHAR),
            ResultColumn(name="Index_length", type=ColumnType.VARCHAR),
            ResultColumn(name="Data_free", type=ColumnType.VARCHAR),
            ResultColumn(name="Auto_increment", type=ColumnType.VARCHAR),
            ResultColumn(name="Create_time", type=ColumnType.VARCHAR),
            ResultColumn(name="Update_time", type=ColumnType.VARCHAR),
            ResultColumn(name="Check_time", type=ColumnType.VARCHAR),
            ResultColumn(name="Collation", type=ColumnType.VARCHAR),
            ResultColumn(name="Checksum", type=ColumnType.VARCHAR),
            ResultColumn(name="Create_options", type=ColumnType.VARCHAR),
            ResultColumn(name="Comment", type=ColumnType.VARCHAR),
        ]
        rows = []
        for (tname,) in table_rows:
            rows.append((
                tname, "SA17", "10", "Dynamic",
                "0", "0", "0", "0", "0", "0",
                None, None, None, None,
                "utf8mb4_general_ci", None, "", "",
            ))
        return rows, cols

    async def _show_fields(self, table_name: str):
        """Return SHOW FIELDS/COLUMNS FROM results from SA17 metadata."""
        conn = await self._get_sa17_conn()
        escaped_name = table_name.replace(chr(39), chr(39)+chr(39))
        sql = (
            "SELECT c.column_name, d.domain_name, c.\"nulls\", c.\"default\","
            " CASE WHEN ic.index_id IS NOT NULL THEN 'Y' ELSE 'N' END AS pkey"
            " FROM sys.systabcol c"
            " JOIN sys.systab t ON c.table_id = t.table_id"
            " JOIN sys.sysdomain d ON c.domain_id = d.domain_id"
            " LEFT JOIN sys.sysidxcol ic"
            "   ON ic.table_id = c.table_id AND ic.column_id = c.column_id"
            "   AND ic.index_id IN ("
            "     SELECT i.index_id FROM sys.sysidx i"
            "     WHERE i.table_id = c.table_id AND i.index_category = 1"
            "   )"
            f" WHERE t.table_name = '{escaped_name}'"
            " ORDER BY c.column_id"
        )
        col_rows, _ = sa17_client.execute_query(conn, sql)
        cols = [
            ResultColumn(name="Field", type=ColumnType.VARCHAR),
            ResultColumn(name="Type", type=ColumnType.VARCHAR),
            ResultColumn(name="Null", type=ColumnType.VARCHAR),
            ResultColumn(name="Key", type=ColumnType.VARCHAR),
            ResultColumn(name="Default", type=ColumnType.VARCHAR),
            ResultColumn(name="Extra", type=ColumnType.VARCHAR),
        ]
        rows = []
        for col_name, col_type, nulls, default, pkey in col_rows:
            rows.append((
                col_name,
                col_type,
                "YES" if nulls == "Y" else "NO",
                "PRI" if pkey == "Y" else "",
                str(default) if default else None,
                "",
            ))
        return rows, cols

    # -- SA17 connection & data queries --------------------------------------

    async def _get_sa17_conn(self):
        if self._sa17_conn is None:
            if self.username and self.username in self._credential_store:
                qb_user = self.username
                qb_pass = self._credential_store[self.username]
            else:
                qb_user = os.environ.get("QB_USERNAME", "Admin")
                qb_pass = os.environ.get("QB_PASSWORD", "")
            self._sa17_creds = (qb_user, qb_pass)
            self._sa17_conn = self._connection_pool.acquire(qb_user, qb_pass)

            # On first connection, query SA17 for the real database name
            if not _schema._db_name_resolved:
                try:
                    rows, _ = sa17_client.execute_query(self._sa17_conn, "SELECT DB_PROPERTY('Name')")
                    if rows and rows[0][0]:
                        _schema.set_database_name(str(rows[0][0]))
                        self.database = _schema.DATABASE_NAME
                        logger.info("SA17 database name: %s", _schema.DATABASE_NAME)
                except Exception as e:
                    logger.warning("Could not query SA17 for database name: %s", e)

        return self._sa17_conn

    async def query(self, expression, sql: str, attrs) -> tuple:
        """Called by Session for actual data queries (SELECT, etc.)."""
        # Reject write operations but allow SELECT and SHOW/DESCRIBE that
        # mysql-mimic may route here
        if isinstance(expression, (exp.Insert, exp.Update, exp.Delete, exp.Drop, exp.Create, exp.Alter)):
            raise MysqlError(
                "QB Bridge is read-only: only SELECT queries are allowed",
                code=ErrorCode.NOT_SUPPORTED_YET,
            )

        try:
            sa17_sql = expression.transform(transform_for_sa17).sql(dialect="tsql")
        except Exception:
            sa17_sql = sql.strip().rstrip(";")

        # Strip MySQL-specific comments (e.g. /*!40001 SQL_NO_CACHE */) and qualifiers
        sa17_sql = COMMENT_RE.sub("", sa17_sql).strip()
        sa17_sql = _schema.DB_QUALIFIER_RE.sub("", sa17_sql)
        sa17_sql = rewrite_offset_fetch(sa17_sql)

        logger.info("SA17 query: %s", sa17_sql)

        try:
            conn = await self._get_sa17_conn()
            rows, descriptions = await asyncio.to_thread(
                sa17_client.execute_query, conn, sa17_sql,
            )
        except Exception as e:
            logger.error("SA17 query error: %s", e)
            raise

        if not descriptions:
            return [], []

        columns = []
        for desc in descriptions:
            name = desc[0]
            columns.append(ResultColumn(name=name, type=ColumnType.VARCHAR))

        str_rows = []
        for row in rows:
            str_rows.append(tuple(None if v is None else str(v) for v in row))

        return str_rows, columns

    async def close(self) -> None:
        self._release_sa17_conn()

    def _release_sa17_conn(self) -> None:
        if self._sa17_conn is not None:
            logger.info("Releasing SA17 connection for user=%s", self._sa17_creds[0] if self._sa17_creds else "?")
            if self._sa17_creds:
                self._connection_pool.release(self._sa17_creds[0], self._sa17_creds[1], self._sa17_conn)
            else:
                try:
                    self._sa17_conn.close()
                except Exception:
                    pass
            self._sa17_conn = None

    def __del__(self):
        # Safety net: release connection if close() was never awaited
        if self._sa17_conn is not None:
            logger.warning("Session GC'd without close() — releasing SA17 connection")
            self._release_sa17_conn()
