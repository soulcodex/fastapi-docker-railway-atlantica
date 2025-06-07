from fastapi import APIRouter, Depends
from typing_extensions import Annotated

from event_manager.api.ui.healtcheck import HealthcheckView
from event_manager.shared.core.identifiers import ULIDProvider

from event_manager.api.dependency_injection.common import ulid_provider

router = APIRouter(tags=["Healthcheck"])


@router.get("/healthcheck", response_model=HealthcheckView)
async def healthcheck(ulid: Annotated[ULIDProvider, Depends(ulid_provider)]) -> HealthcheckView:
    return HealthcheckView.ok(_id=ulid.generate().value)
