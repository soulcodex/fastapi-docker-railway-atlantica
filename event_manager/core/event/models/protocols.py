from typing import Protocol, List

from event_manager.core.event.models.event import Event
from event_manager.core.event.models.value_objects import EventId


class EventRepository(Protocol):

    def fetch_by_id(self, _id: EventId) -> Event:
        pass

    def search(self) -> List[Event]:
        pass
