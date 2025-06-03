from fastapi import APIRouter
from typing import List

from event_manager.api.ui.event import EventView

router = APIRouter(tags=["Event"])


@router.get("/events")
async def list_events() -> List[EventView]:
    return []