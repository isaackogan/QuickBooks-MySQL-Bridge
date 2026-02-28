import hashlib


def compute_uid(username: str) -> str:
    """UID = hex-encode the raw username bytes."""
    return username.encode("latin-1").hex()


def compute_pwd(username: str, password: str = "") -> str:
    """PWD = '07' + PBKDF2-HMAC-SHA256(password, salt=username, iterations=1000, dklen=32) + '00'."""
    dk = hashlib.pbkdf2_hmac(
        "sha256",
        password.encode("latin-1"),
        username.encode("latin-1"),
        1000,
        dklen=32,
    )
    return "07" + dk.hex() + "00"
