from datetime import datetime, date, time

from event_manager.shared.utils.time_utils import datetime_to_milliseconds


class Timestamp:

    def __init__(self, value: datetime):
        self.__value = value

    @property
    def value(self) -> datetime:
        return self.__value

    @property
    def timestamp(self) -> float:
        return self.__value.timestamp()

    @property
    def millis(self) -> int:
        return datetime_to_milliseconds(self.__value)

    def __eq__(self, other: "Timestamp"):
        return self.value == other.value


class CreatedAt(Timestamp):
    pass


class UpdatedAt(Timestamp):
    pass


class DateValue:
    def __init__(self, value: date):
        self.__value = value

    @property
    def value(self) -> date:
        return self.__value


class TimeValue:
    def __init__(self, value: time):
        self.__value = value

    @property
    def value(self) -> time:
        return self.__value
