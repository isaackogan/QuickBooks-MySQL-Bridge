import logging
import os
import threading

import sqlanydb

from .credentials import compute_uid, compute_pwd

logger = logging.getLogger(__name__)

SERVER_NAME = os.environ.get("SA17_SERVER_NAME", "qbbridge")


def connect(username: str, password: str) -> sqlanydb.Connection:
    """Open an SA17 connection using QuickBooks-derived credentials."""
    uid = compute_uid(username)
    pwd = compute_pwd(username, password)

    logger.info("Connecting to SA17 server=%s uid=%s", SERVER_NAME, uid)

    conn = sqlanydb.connect(
        eng=SERVER_NAME,
        uid=uid,
        pwd=pwd,
        dbn="",
    )
    logger.info("Successfully connected to SQL Anywhere 17 (server=%s)", SERVER_NAME)
    return conn


FETCH_BATCH_SIZE = 10_000


def execute_query(conn: sqlanydb.Connection, sql: str):
    """Execute a query and return (rows, column_descriptions).

    Uses batched fetching to avoid loading millions of rows into memory at once.

    column_descriptions follows the DB-API 2.0 cursor.description format:
    sequence of (name, type_code, display_size, internal_size, precision, scale, null_ok).
    """
    cursor = conn.cursor()
    cursor.execute(sql)

    if cursor.description is None:
        return [], []

    descriptions = cursor.description
    rows = []
    while True:
        batch = cursor.fetchmany(FETCH_BATCH_SIZE)
        if not batch:
            break
        rows.extend(batch)
    cursor.close()
    return rows, descriptions


class ConnectionPool:
    """Simple connection pool for SA17 connections, keyed by (username, password).

    Keeps up to `max_idle` idle connections per credential set. When a session
    closes, it returns its connection to the pool instead of closing it.
    New sessions try to reuse an idle connection before creating a new one.
    """

    def __init__(self, max_idle: int = 20):
        self._max_idle = max_idle
        self._lock = threading.Lock()
        # key: (username, password) -> list of idle connections
        self._idle: dict[tuple[str, str], list[sqlanydb.Connection]] = {}

    def acquire(self, username: str, password: str) -> sqlanydb.Connection:
        """Get a connection from the pool, or create a new one."""
        key = (username, password)
        with self._lock:
            idle = self._idle.get(key, [])
            while idle:
                conn = idle.pop()
                try:
                    # Validate the connection is still alive
                    cursor = conn.cursor()
                    cursor.execute("SELECT 1")
                    cursor.fetchall()
                    cursor.close()
                    logger.debug("Reusing pooled SA17 connection for user=%s", username)
                    return conn
                except Exception:
                    logger.debug("Discarding stale pooled connection for user=%s", username)
                    try:
                        conn.close()
                    except Exception:
                        pass

        # No idle connection available, create a new one
        return connect(username, password)

    def release(self, username: str, password: str, conn: sqlanydb.Connection) -> None:
        """Return a connection to the pool instead of closing it."""
        key = (username, password)
        with self._lock:
            idle = self._idle.setdefault(key, [])
            if len(idle) < self._max_idle:
                idle.append(conn)
                logger.debug("Returned connection to pool for user=%s (pool size: %d)", username, len(idle))
                return

        # Pool is full, close the connection
        try:
            conn.close()
        except Exception:
            pass
