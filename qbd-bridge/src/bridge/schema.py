import logging
import os
import re

from mysql_mimic.schema import (
    BaseInfoSchema,
    Column,
    InfoSchema,
    info_schema_tables,
)

logger = logging.getLogger(__name__)

# ---------- SA17 introspection SQL ----------

SCHEMA_SQL = """\
SELECT t.table_name, c.column_name, d.domain_name
FROM sys.systab t
JOIN sys.sysuser u ON u.user_id = t.creator
JOIN sys.systabcol c ON c.table_id = t.table_id
JOIN sys.sysdomain d ON c.domain_id = d.domain_id
WHERE t.table_type = 1
  AND u.user_name NOT IN ('SYS', 'dbo', 'rs_systabgroup')
ORDER BY t.table_name, c.column_id"""

INDEXES_SQL = """\
SELECT
    t.table_name,
    i."unique",
    i.index_name,
    ic.sequence,
    c.column_name,
    i.index_category
FROM sys.sysidx i
JOIN sys.systab t ON i.table_id = t.table_id
JOIN sys.sysidxcol ic ON i.table_id = ic.table_id AND i.index_id = ic.index_id
JOIN sys.systabcol c ON ic.table_id = c.table_id AND ic.column_id = c.column_id
JOIN sys.sysuser u ON t.creator = u.user_id
WHERE t.table_type = 1
  AND u.user_name NOT IN ('SYS', 'dbo', 'rs_systabgroup')
ORDER BY t.table_name, i.index_name, ic.sequence"""

FK_SQL = """\
SELECT
    fk.role AS constraint_name,
    ft.table_name AS fk_table,
    fc.column_name AS fk_column,
    pt.table_name AS pk_table,
    pc.column_name AS pk_column
FROM sys.sysfkey fk
JOIN sys.systab ft ON fk.foreign_table_id = ft.table_id
JOIN sys.systab pt ON fk.primary_table_id = pt.table_id
JOIN sys.sysfkcol fkc
  ON fk.foreign_table_id = fkc.foreign_table_id
 AND fk.foreign_key_id  = fkc.foreign_key_id
JOIN sys.systabcol fc
  ON fkc.foreign_table_id = fc.table_id
 AND fkc.foreign_column_id = fc.column_id
JOIN sys.systabcol pc
  ON fkc.primary_table_id = pc.table_id
 AND fkc.primary_column_id = pc.column_id
JOIN sys.sysuser u ON ft.creator = u.user_id
WHERE u.user_name NOT IN ('SYS', 'dbo', 'rs_systabgroup')
ORDER BY ft.table_name, fk.role"""

SCHEMA_CACHE_TTL = 300  # seconds


def _derive_database_name() -> str:
    qbw = os.environ.get("QBW_FILE", "")
    if qbw:
        return os.path.splitext(os.path.basename(qbw))[0]
    return os.environ.get("SA17_DATABASE", "quickbooks")


DATABASE_NAME = _derive_database_name()


def _build_qualifier_re(name: str) -> re.Pattern:
    return re.compile(
        rf'(?:\[{re.escape(name)}\]|"{re.escape(name)}"|`{re.escape(name)}`)\s*\.',
        re.IGNORECASE,
    )


# Regex to strip database qualifier from transpiled SQL
DB_QUALIFIER_RE = _build_qualifier_re(DATABASE_NAME)


_db_name_resolved = False


def set_database_name(name: str) -> None:
    """Update the database name (called after querying SA17 on first connection)."""
    global DATABASE_NAME, DB_QUALIFIER_RE, _db_name_resolved
    DATABASE_NAME = name
    DB_QUALIFIER_RE = _build_qualifier_re(name)
    _db_name_resolved = True


def build_info_schema(
    db_name: str,
    columns: list[Column],
    index_rows: list,
    fk_rows: list,
) -> BaseInfoSchema:
    """Build an InfoSchema with tables, columns, indexes, PKs and FKs."""
    tables = info_schema_tables(columns)

    cat = "def"

    # -- statistics (indexes) --
    for table_name, is_unique, index_name, seq, col_name, index_category in index_rows:
        non_unique = 0 if is_unique in (1, 2) else 1
        idx_type = "BTREE"
        tables["information_schema"]["statistics"].append((
            cat,            # table_catalog
            db_name,        # table_schema
            table_name,     # table_name
            non_unique,     # non_unique
            db_name,        # index_schema
            index_name,     # index_name
            seq,            # seq_in_index
            col_name,       # column_name
            "A",            # collation
            None,           # cardinality
            None,           # sub_part
            None,           # packed
            "",             # nullable
            idx_type,       # index_type
            "",             # comment
            "",             # index_comment
            "YES",          # is_visible
            None,           # expression
        ))

    # -- table_constraints & key_column_usage (PKs) --
    pk_seen = set()
    for table_name, is_unique, index_name, seq, col_name, index_category in index_rows:
        if index_category == 1:  # primary key
            pk_key = (table_name, index_name)
            if pk_key not in pk_seen:
                pk_seen.add(pk_key)
                tables["information_schema"]["table_constraints"].append((
                    index_name,     # constraint_name
                    cat,            # constraint_catalog
                    db_name,        # constraint_schema
                    db_name,        # table_schema
                    table_name,     # table_name
                    "PRIMARY KEY",  # constraint_type
                    "YES",          # enforced
                ))
            tables["information_schema"]["key_column_usage"].append((
                cat,        # constraint_catalog
                db_name,    # constraint_schema
                index_name, # constraint_name
                cat,        # table_catalog
                db_name,    # table_schema
                table_name, # table_name
                col_name,   # column_name
                seq,        # ordinal_position
                None,       # position_in_unique_constraint
                None,       # referenced_table_schema
                None,       # referenced_table_name
                None,       # referenced_column_name
            ))

    # -- table_constraints & key_column_usage & referential_constraints (FKs) --
    fk_seen = set()
    fk_ordinal: dict = {}
    for constraint_name, fk_table, fk_col, pk_table, pk_col in fk_rows:
        fk_key = (fk_table, constraint_name)
        if fk_key not in fk_seen:
            fk_seen.add(fk_key)
            fk_ordinal[fk_key] = 0
            tables["information_schema"]["table_constraints"].append((
                constraint_name,  # constraint_name
                cat,              # constraint_catalog
                db_name,          # constraint_schema
                db_name,          # table_schema
                fk_table,         # table_name
                "FOREIGN KEY",    # constraint_type
                "YES",            # enforced
            ))
            tables["information_schema"]["referential_constraints"].append((
                cat,              # constraint_catalog
                db_name,          # constraint_schema
                constraint_name,  # constraint_name
                cat,              # unique_constraint_catalog
                db_name,          # unique_constraint_schema
                None,             # unique_constraint_name
                "NONE",           # match_option
                "NO ACTION",      # update_rule
                "NO ACTION",      # delete_rule
                fk_table,         # table_name
                pk_table,         # referenced_table_name
            ))

        fk_ordinal[fk_key] += 1
        tables["information_schema"]["key_column_usage"].append((
            cat,                    # constraint_catalog
            db_name,                # constraint_schema
            constraint_name,        # constraint_name
            cat,                    # table_catalog
            db_name,                # table_schema
            fk_table,               # table_name
            fk_col,                 # column_name
            fk_ordinal[fk_key],     # ordinal_position
            fk_ordinal[fk_key],     # position_in_unique_constraint
            db_name,                # referenced_table_schema
            pk_table,               # referenced_table_name
            pk_col,                 # referenced_column_name
        ))

    return InfoSchema(tables)
