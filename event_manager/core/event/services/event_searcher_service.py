from typing import List
from event_manager.core.event.models.event import Event
from event_manager.core.event.models.protocols import EventRepository


class EventSearcherService:
    def __init__(self, repository: EventRepository):
        self.repository = repository

    async def search(self) -> List[Event]:
        events = await self.repository.search()
        return events
