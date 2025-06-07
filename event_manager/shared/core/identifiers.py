from typing import Protocol


class UUID(str):

    @property
    def value(self) -> str:
        return str(self)

    def __eq__(self, other: "UUID") -> bool:
        return self.value == other.value


class ULID(str):

    @property
    def value(self) -> str:
        return str(self)

    def __eq__(self, other: "ULID") -> bool:
        return self.value == other.value


class UUIDProvider(Protocol):

    def generate(self) -> UUID:
        pass


class ULIDProvider(Protocol):

    def generate(self) -> ULID:
        pass
