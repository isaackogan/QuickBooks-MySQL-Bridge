# Stage 1: grab SA17 binaries from the pre-built image
FROM superus/ipos-database-sql-anywhere:17-2.160.0 AS sa17

# Stage 2: modern Ubuntu with Python 3
FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV SQLANY17=/opt/sqlanywhere17
ENV PATH="${SQLANY17}/bin64:${PATH}"
ENV LD_LIBRARY_PATH="${SQLANY17}/lib64"
ENV SQLANY_API_DLL="${SQLANY17}/lib64/libdbcapi_r.so"

# Copy SA17 from stage 1
COPY --from=sa17 /opt/sqlanywhere17 /opt/sqlanywhere17

# Optional DB client for dump.sh (default: none)
ARG DB_CLIENT=none

# System dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-venv \
    python3-pip \
    openssl \
    $(if [ "$DB_CLIENT" = "mariadb" ]; then echo "mariadb-client"; \
      elif [ "$DB_CLIENT" = "mysql" ]; then echo "default-mysql-client"; fi) \
    && rm -rf /var/lib/apt/lists/*

ENV DB_CLIENT=${DB_CLIENT}

# Generate self-signed SSL cert so clients send cleartext passwords over TLS
RUN mkdir -p /app/certs && \
    openssl req -x509 -newkey rsa:2048 -keyout /app/certs/server-key.pem \
    -out /app/certs/server-cert.pem -days 3650 -nodes \
    -subj "/CN=qb-bridge"

# Create venv
RUN python3 -m venv /app/venv
ENV PATH="/app/venv/bin:${PATH}"

# Install Python dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy application
COPY src/ /app/src/
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

WORKDIR /app

EXPOSE 3306

ENTRYPOINT ["/app/entrypoint.sh"]
