from typing import Text, List, Dict, Any
from datetime import date, time, datetime

from pydantic import BaseModel, Field

from event_manager.core.event.models.event import Event


class EventViewAttributes(BaseModel):
    title: Text
    description: Text
    price: Text
    venue: Text
    event_date: date
    event_hour: time
    updated_at: datetime


class EventView(BaseModel):
    type: Text = Field(default="event")
    id: Text
    attributes: EventViewAttributes


class EventListView(BaseModel):
    data: List[EventView]
    meta: Dict[Text, Any]

    @classmethod
    def empty(cls) -> "EventListView":
        return EventListView(data=[], meta={"count": 0})


def create_event_list_view_from_events(events: List[Event]) -> EventListView:
    event_views: List[EventView] = [__event_to_event_view(event) for event in events]
    return EventListView(data=event_views, meta={"count": len(events)})


def __event_to_event_view(event: Event) -> EventView:
    event_as_dict = event.__dict__(currency_symbol="€")
    return EventView(
        id=event_as_dict["id"],
        attributes=EventViewAttributes(
            title=event_as_dict["title"],
            description=event_as_dict["description"],
            price=event_as_dict["price"],
            venue=event_as_dict["venue"],
            event_date=event_as_dict["event_date"],
            event_hour=event_as_dict["event_hour"],
            updated_at=event_as_dict["updated_at"]
        )
    )
