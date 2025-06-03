from typing import List
from event_manager.core.event.models.event import Event
from event_manager.core.event.models.protocols import EventRepository
from event_manager.core.event.models.value_objects import EventId, Title


class EventFetcherService:
    def __init__(self, repository: EventRepository):
        self.repository = repository

    async def fetch_by_id(self, _id: EventId) -> Event:
        return self.repository.fetch_by_id(_id)

    async def search(self) -> List[Event]:
        events = self.repository.search()
        return events
