from fastapi import APIRouter

from event_manager.api.ui.healtcheck import HealthcheckView

router = APIRouter(tags=["Healthcheck"])


@router.get("/healthcheck", response_model=HealthcheckView)
async def healthcheck() -> HealthcheckView:
    return HealthcheckView.ok(_id='123')
