import logging
from typing import Optional, Sequence

from mysql_mimic.auth import (
    AbstractClearPasswordAuthPlugin,
    AuthPlugin,
    IdentityProvider,
    User,
)

logger = logging.getLogger(__name__)


class QBAuthPlugin(AbstractClearPasswordAuthPlugin):
    name = "mysql_clear_password"
    client_plugin_name = "mysql_clear_password"

    def __init__(self, sessions: dict):
        self._sessions = sessions

    async def check(self, username: str, password: str) -> Optional[str]:
        self._sessions[username] = password
        logger.info("Authenticated MySQL user: %s", username)
        return username


class QBIdentityProvider(IdentityProvider):
    def __init__(self):
        self._sessions: dict = {}
        self._plugin = QBAuthPlugin(self._sessions)

    @property
    def sessions(self):
        return self._sessions

    def get_plugins(self) -> Sequence[AuthPlugin]:
        return [self._plugin]

    async def get_user(self, username: str) -> Optional[User]:
        return User(name=username, auth_plugin="mysql_clear_password")
