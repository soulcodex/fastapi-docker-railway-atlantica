import databases
from typing_extensions import Annotated
from fastapi import Depends

from event_manager.api.dependency_injection.common import database_connection
from event_manager.core.event.adapters.postgres_event_repository import PostgresSQLEventRepository
from event_manager.core.event.models.protocols import EventRepository
from event_manager.core.event.services.event_searcher_service import EventSearcherService


async def event_repository(db: Annotated[databases.Database, Depends(database_connection)]) -> EventRepository:
    return PostgresSQLEventRepository(db=db, schema="event_manager")


async def event_fetcher_service(repo: Annotated[EventRepository, Depends(event_repository)]) -> EventSearcherService:
    return EventSearcherService(repository=repo)
