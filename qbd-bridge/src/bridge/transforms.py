import re

from sqlglot import expressions as exp

# ---------- regex helpers ----------

COMMENT_RE = re.compile(r"/\*.*?\*/", re.DOTALL)

# sqlglot's Python executor cannot evaluate CAST(null AS type) - replace with plain NULL
CAST_NULL_RE = re.compile(
    r"cast\s*\(\s*null\s+as\s+\w+(?:\s*\(\s*\d+\s*\))?\s*\)",
    re.IGNORECASE,
)

# TSQL emits "OFFSET n ROWS FETCH NEXT m ROWS ONLY" - SA17 wants "TOP m START AT n+1"
_OFFSET_FETCH_RE = re.compile(
    r"\s*OFFSET\s+(\d+)\s+ROWS?\s+FETCH\s+(?:FIRST|NEXT)\s+(\d+)\s+ROWS?\s+ONLY",
    re.IGNORECASE,
)

# TSQL emits "OFFSET n ROWS" without FETCH - SA17 just skips n rows
_OFFSET_ONLY_RE = re.compile(
    r"\s*OFFSET\s+(\d+)\s+ROWS?",
    re.IGNORECASE,
)

# SHOW CREATE TABLE tablename
SHOW_CREATE_RE = re.compile(
    r"^\s*SHOW\s+CREATE\s+TABLE\s+[`'\"\[]?(\w+)[`'\"\]]?\s*;?\s*$",
    re.IGNORECASE,
)

# EXPLAIN / DESCRIBE SELECT ...
EXPLAIN_RE = re.compile(r"^\s*EXPLAIN\b", re.IGNORECASE)


def transform_for_sa17(node: exp.Expression) -> exp.Expression:
    """Rewrite MySQL-specific AST nodes for SA17 compatibility."""
    # GROUP_CONCAT(col SEPARATOR sep) -> LIST(col, sep)
    if isinstance(node, exp.GroupConcat):
        sep = node.args.get("separator") or exp.Literal.string(",")
        return exp.Anonymous(this="LIST", expressions=[node.this, sep])

    # TRUE / FALSE -> 1 / 0
    if isinstance(node, exp.Boolean):
        return exp.Literal.number(1 if node.this else 0)

    # IFNULL(a, b) -> COALESCE(a, b) (SA17 supports COALESCE)
    if isinstance(node, exp.Coalesce) and node.args.get("is_variant"):
        return node
    if type(node).__name__ == "IfNull":
        return exp.Coalesce(this=node.this, expressions=node.expressions)

    # CONCAT_WS(sep, a, b, ...) -> a || sep || b || ...
    if isinstance(node, exp.ConcatWs):
        args = list(node.expressions)
        if len(args) < 2:
            return exp.Literal.string("")
        sep = args[0]
        parts = args[1:]
        result = parts[0]
        for part in parts[1:]:
            result = exp.DPipe(this=result, expression=sep)
            result = exp.DPipe(this=result, expression=part)
        return result

    return node


def rewrite_offset_fetch(sql: str) -> str:
    """Convert TSQL OFFSET/FETCH to SA17 TOP ... START AT."""
    # OFFSET n ROWS FETCH NEXT m ROWS ONLY  ->  TOP m START AT n+1
    m = _OFFSET_FETCH_RE.search(sql)
    if m:
        offset = int(m.group(1))
        limit = int(m.group(2))
        sql = sql[:m.start()] + sql[m.end():]
        sql = re.sub(r"(?i)^(\s*SELECT\b)", rf"\1 TOP {limit} START AT {offset + 1}", sql, count=1)
        return sql

    # OFFSET n ROWS (no FETCH - just skip)  ->  START AT n+1
    m = _OFFSET_ONLY_RE.search(sql)
    if m:
        offset = int(m.group(1))
        sql = sql[:m.start()] + sql[m.end():]
        sql = re.sub(r"(?i)^(\s*SELECT\b)", rf"\1 START AT {offset + 1}", sql, count=1)
        return sql

    return sql
