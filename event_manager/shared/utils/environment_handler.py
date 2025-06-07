from os import environ
from typing import Any, Text, Optional, Protocol


class EnvironmentHandler(Protocol):

    def get_value(self, key: Text) -> Optional[Any]:
        pass

    def set_value(self, key: Text, value: Text) -> None:
        pass


class NativeEnvironmentHandler(EnvironmentHandler):

    def get_value(self, key: Text) -> Optional[Any]:
        if key in environ:
            return environ[key]
        return None

    def set_value(self, key: Text, value: Text) -> None:
        environ[key] = value
