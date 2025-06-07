from fastapi import APIRouter, Depends
from typing import Annotated

from event_manager.api.dependency_injection.event import event_fetcher_service
from event_manager.api.ui.event import EventListView, create_event_list_view_from_events
from event_manager.core.event.services.event_searcher_service import EventSearcherService

router = APIRouter(tags=["Event"])


@router.get("/events", response_model=EventListView)
async def list_events(searcher: Annotated[EventSearcherService, Depends(event_fetcher_service)]) -> EventListView:
    events = await searcher.search()
    return create_event_list_view_from_events(events)
