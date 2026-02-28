import asyncio
import logging
import os
import ssl
from datetime import datetime, timezone, timedelta

from mysql_mimic import MysqlServer

from .. import sa17_client
from .auth import QBIdentityProvider
from .session import QBSession

logger = logging.getLogger(__name__)

BUILD_TIME = datetime.now(timezone(timedelta(hours=-5))).strftime("%Y-%m-%d %H:%M:%S EST")

CERT_PATH = "/app/certs/server-cert.pem"
KEY_PATH = "/app/certs/server-key.pem"


async def run_server(host: str = "0.0.0.0", port: int = 3306):
    identity_provider = QBIdentityProvider()
    pool = sa17_client.ConnectionPool(max_idle=20)

    def session_factory():
        return QBSession(
            credential_store=identity_provider.sessions,
            connection_pool=pool,
        )

    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ctx.load_cert_chain(CERT_PATH, KEY_PATH)

    server = MysqlServer(
        session_factory=session_factory,
        identity_provider=identity_provider,
        ssl=ctx,
    )

    logger.info("Build: %s", BUILD_TIME)
    logger.info("Starting MySQL proxy on %s:%d (SSL enabled)", host, port)
    await server.serve_forever(host=host, port=port)


def main():
    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s [%(levelname)s] %(name)s: %(message)s",
    )

    host = os.environ.get("PROXY_HOST", "0.0.0.0")
    port = int(os.environ.get("PROXY_PORT", "3306"))

    asyncio.run(run_server(host=host, port=port))
