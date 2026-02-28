#!/usr/bin/env bash
set -euo pipefail

QBW_FILE="${QBW_FILE:?ERROR: QBW_FILE environment variable must be set (path to .qbw file)}"
SERVER_NAME="${SA17_SERVER_NAME:-qbbridge}"

if [ ! -f "$QBW_FILE" ]; then
    echo "ERROR: QBW file not found: $QBW_FILE"
    echo "Mount your .qbw file into the container and set QBW_FILE accordingly."
    exit 1
fi

# Source SA17 environment
source /opt/sqlanywhere17/bin64/sa_config.sh 2>/dev/null || true
export SQLANY17=/opt/sqlanywhere17
export PATH="${SQLANY17}/bin64:${PATH}"
export LD_LIBRARY_PATH="${SQLANY17}/lib64:${LD_LIBRARY_PATH:-}"
export SQLANY_API_DLL="${SQLANY17}/lib64/libdbcapi_r.so"

echo "=== QB-Bridge ==="
echo "QBW file: $QBW_FILE"
echo "SA17 server name: $SERVER_NAME"
echo ""

# Start the SA17 database engine in the background, capturing output
SA17_LOG=/tmp/sa17.log
echo "Starting SQL Anywhere 17 engine..."
dbeng17 -n "$SERVER_NAME" -gm 256 "$QBW_FILE" > "$SA17_LOG" 2>&1 &
SA17_PID=$!

# Tail the log in the background so it still shows up in docker logs
tail -f "$SA17_LOG" &
TAIL_PID=$!

# Wait for SA17 to be ready by watching its output
echo "Waiting for SA17 to be ready..."
TRIES=0
MAX_TRIES=60
while [ $TRIES -lt $MAX_TRIES ]; do
    if grep -q "Now accepting requests" "$SA17_LOG" 2>/dev/null; then
        echo "SA17 engine is ready."
        break
    fi
    # Check if dbeng17 died
    if ! kill -0 $SA17_PID 2>/dev/null; then
        echo "ERROR: SA17 engine exited unexpectedly."
        cat "$SA17_LOG"
        exit 1
    fi
    TRIES=$((TRIES + 1))
    sleep 1
done

if [ $TRIES -eq $MAX_TRIES ]; then
    echo "ERROR: SA17 engine did not become ready within ${MAX_TRIES}s."
    cat "$SA17_LOG"
    kill $SA17_PID 2>/dev/null || true
    exit 1
fi

# Trap to clean up SA17 on exit
cleanup() {
    echo "Shutting down..."
    kill $TAIL_PID 2>/dev/null || true
    kill $SA17_PID 2>/dev/null || true
    wait $SA17_PID 2>/dev/null || true
}
trap cleanup EXIT INT TERM

# Start the MySQL proxy bridge
echo ""
echo "Starting MySQL proxy on 0.0.0.0:3306 (SSL enabled)..."
echo "Connect with your QB username/password using any MySQL client."
echo ""

export SA17_SERVER_NAME="$SERVER_NAME"
exec /app/venv/bin/python -m src.bridge
