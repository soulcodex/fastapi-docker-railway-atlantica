from typing import Text
from enum import Enum

from pydantic import BaseModel, Field


class HealthcheckStatus(str, Enum):
    OK = "OK"
    KO = "KO"
    UNKNOWN = "UNKNOWN"


class HealthcheckView(BaseModel):
    type: Text = Field(default="healthcheck")
    id: Text
    status: HealthcheckStatus

    @classmethod
    def ok(cls, _id: Text) -> "HealthcheckView":
        return HealthcheckView(id=_id, status=HealthcheckStatus.OK)

    @classmethod
    def ko(cls, _id: Text) -> "HealthcheckView":
        return HealthcheckView(id=_id, status=HealthcheckStatus.KO)

    @classmethod
    def unknown(cls, _id: Text) -> "HealthcheckView":
        return HealthcheckView(id=_id, status=HealthcheckStatus.UNKNOWN)
