#!/usr/bin/env python3
"""Generate SA17 connection credentials from QuickBooks login info."""

import hashlib
import getpass
import sys


def compute_uid(username: str) -> str:
    return username.encode("latin-1").hex()


def compute_pwd(username: str, password: str = "") -> str:
    dk = hashlib.pbkdf2_hmac(
        "sha256",
        password.encode("latin-1"),
        username.encode("latin-1"),
        1000,
        dklen=32,
    )
    return "07" + dk.hex() + "00"


def main():
    username = input("QB Username [Admin]: ").strip() or "Admin"
    password = getpass.getpass("QB Password []: ") if sys.stdin.isatty() else input()

    uid = compute_uid(username)
    pwd = compute_pwd(username, password)

    print()
    print(f"UID: {uid}")
    print(f"PWD: {pwd}")
    print()
    print("Connection string:")
    print(f'  dbisql -c "ENG=qbbridge;UID={uid};PWD={pwd}"')


if __name__ == "__main__":
    main()
