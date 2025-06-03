from event_manager.shared.core.types.string_value import StringValue
from event_manager.shared.core.types.integer_value import PriceValue
from event_manager.shared.core.types.datetime_value import DateValue, TimeValue


class EventId(StringValue):
    pass


class Title(StringValue):
    pass


class Description(StringValue):
    pass


class Price(PriceValue):
    pass


class Venue(StringValue):
    pass


class EventDate(DateValue):
    pass


class EventHour(TimeValue):
    pass
