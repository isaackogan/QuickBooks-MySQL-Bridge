#!/usr/bin/env bash
set -euo pipefail

docker build \
  -t "isaackogan/quickbooks-desktop-mysql-bridge:v0.0.2" \
  .
