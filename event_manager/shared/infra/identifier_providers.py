import uuid
import ulid

from typing import Optional

from event_manager.shared.core.identifiers import UUIDProvider, UUID, ULIDProvider, ULID


class RandomUUIDProvider(UUIDProvider):

    def generate(self) -> UUID:
        return UUID(str(uuid.uuid4()))


class RandomULIDProvider(ULIDProvider):

    def generate(self) -> ULID:
        return ULID(str(ulid.ULID()))


class FixedUUIDProvider(UUIDProvider):

    def __init__(self):
        self._value: Optional[UUID] = None

    def generate(self) -> UUID:
        if self._value is not None:
            return self._value

        self._value = UUID(str(uuid.uuid4()))
        return self._value


class FixedULIDProvider(ULIDProvider):

    def __init__(self):
        self._value: Optional[ULID] = None

    def generate(self) -> ULID:
        if self._value is not None:
            return self._value

        self._value = ULID(str(ulid.ULID()))
        return self._value
