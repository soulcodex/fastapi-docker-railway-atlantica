from datetime import datetime
from typing import Dict, Text, Any
from event_manager.core.event.models.value_objects import (
    EventId,
    Title,
    Description,
    Price,
    Venue,
    EventDate,
    EventHour
)
from event_manager.shared.core.types.datetime_value import CreatedAt, UpdatedAt


class Event:

    def __init__(
            self,
            event_id: EventId,
            title: Title,
            description: Description,
            price: Price,
            venue: Venue,
            event_date: EventDate,
            event_hour: EventHour,
            created_at: CreatedAt,
            updated_at: UpdatedAt,
    ):
        self.__event_id = event_id
        self.__title = title
        self.__description = description
        self.__price = price
        self.__venue = venue
        self.__event_date = event_date
        self.__event_hour = event_hour
        self.__created_at = created_at
        self.__updated_at = updated_at

    @property
    def id(self) -> EventId:
        return self.__event_id

    @property
    def title(self) -> Title:
        return self.__title

    @property
    def description(self) -> Description:
        return self.__description

    @property
    def price(self) -> Price:
        return self.__price

    @property
    def venue(self) -> Venue:
        return self.__venue

    @property
    def event_date(self) -> EventDate:
        return self.__event_date

    @property
    def event_hour(self) -> EventHour:
        return self.__event_hour

    @property
    def created_at(self) -> CreatedAt:
        return self.__created_at

    @property
    def updated_at(self) -> UpdatedAt:
        return self.__updated_at

    @classmethod
    def from_primitives(
            cls,
            event_id: Text,
            title: Text,
            description: Text,
            price: int,
            venue: Text,
            event_date: datetime,
            event_hour: datetime,
            created_at: datetime,
            updated_at: datetime,
    ) -> "Event":
        return Event(
            event_id=EventId(event_id),
            title=Title(title),
            description=Description(description),
            price=Price(price),
            venue=Venue(venue),
            event_date=EventDate(event_date.date()),
            event_hour=EventHour(event_hour.time()),
            created_at=CreatedAt(created_at),
            updated_at=UpdatedAt(updated_at),
        )

    def __dict__(self, *args, **kwargs) -> Dict[Text, Any]:
        return {
            'id': self.__event_id.value,
            'title': self.__title.value,
            'description': self.__description.value,
            'price': self.__price.value_with_currency(currency_symbol=kwargs.get('currency_symbol', '€')),
            'venue': self.__venue.value,
            'event_date': self.__event_date.value,
            'event_hour': self.__event_hour.value,
            'created_at': self.__created_at.value,
            'updated_at': self.__updated_at.value,
        }
