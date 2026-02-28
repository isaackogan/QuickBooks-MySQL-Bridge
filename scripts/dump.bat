@echo off
setlocal enabledelayedexpansion

REM QBD-Bridge database dump script (Windows)
REM Connects to the bridge and exports the full QB database to a .sql file.

REM --- Check for mysqldump ---
where mysqldump >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: mysqldump is not installed or not on PATH.
    echo.
    echo Install MySQL client tools and ensure mysqldump.exe is on your PATH.
    echo Download from: https://dev.mysql.com/downloads/shell/
    exit /b 1
)

REM --- Check for mysql client ---
where mysql >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: mysql client is not installed (needed to discover the database name^).
    exit /b 1
)

REM --- Interactive wizard ---
echo === QBD-Bridge Database Dump ===
echo.

set "HOST=127.0.0.1"
set /p "HOST=Host [127.0.0.1]: "

set "PORT=3306"
set /p "PORT=Port [3306]: "

set "USERNAME=Admin"
set /p "USERNAME=Username [Admin]: "

set "PASSWORD="
set /p "PASSWORD=Password []: "

REM --- Discover database name ---
echo.
echo Connecting to discover database name...

for /f "usebackq tokens=*" %%i in (`mysql -h "%HOST%" -P "%PORT%" -u "%USERNAME%" --password="%PASSWORD%" --ssl-mode=REQUIRED --enable-cleartext-plugin --skip-column-names --batch -e "SELECT DATABASE()" 2^>nul`) do (
    set "DB_NAME=%%i"
)

if not defined DB_NAME (
    echo ERROR: Could not determine database name. Is the bridge running?
    exit /b 1
)

echo Found database: %DB_NAME%

REM --- Output file ---
for /f "tokens=1-3 delims=/" %%a in ('date /t') do (
    set "OUTFILE=qb-dump-%%c-%%a-%%b.sql"
)

echo Dumping to %OUTFILE%...
echo.

REM --- Run mysqldump ---
mysqldump ^
    -h "%HOST%" ^
    -P "%PORT%" ^
    -u "%USERNAME%" ^
    --password="%PASSWORD%" ^
    --ssl-mode=REQUIRED ^
    --enable-cleartext-plugin ^
    --skip-lock-tables ^
    --single-transaction ^
    --no-tablespaces ^
    --verbose ^
    --databases "%DB_NAME%" ^
    > "%OUTFILE%"

if %errorlevel% neq 0 (
    echo ERROR: mysqldump failed.
    exit /b 1
)

echo Done! Dump saved to %OUTFILE%
