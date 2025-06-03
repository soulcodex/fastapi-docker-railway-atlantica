from typing import List

from event_manager.core.event.models.event import Event
from event_manager.core.event.models.protocols import EventRepository
from event_manager.core.event.models.value_objects import EventId


class PostgresSQLEventRepository(EventRepository):

    def search(self) -> List[Event]:
        pass

    def fetch_by_id(self, _id: EventId) -> Event:
        pass