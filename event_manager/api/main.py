import uvicorn
from fastapi import FastAPI
from toolz import pipe

from event_manager.api.routers.healthcheck import router as healthcheck_router
from event_manager.api.routers.event import router as event_router
from event_manager.config.environment import get_settings, Settings


def create_instance(config: Settings) -> FastAPI:
    return FastAPI(
        debug=config.WEB_APP_DEBUG,
        title=config.WEB_APP_TITLE,
        description=config.WEB_APP_DESCRIPTION,
        version=config.WEB_APP_VERSION,
    )


def register_events(app: FastAPI) -> FastAPI:
    return app


def register_middlewares(app: FastAPI) -> FastAPI:
    return app


def register_routers(app: FastAPI) -> FastAPI:
    app.include_router(router=healthcheck_router)
    app.include_router(router=event_router)
    return app


def create_app(config: Settings) -> FastAPI:
    app: FastAPI = pipe(
        config,
        create_instance,
        register_events,
        register_middlewares,
        register_routers,
    )

    return app


if __name__ == "__main__":
    settings = get_settings()
    uvicorn.run(
        app=lambda: create_app(settings),
        host=settings.WEB_SERVER_HOST,
        port=settings.WEB_SERVER_PORT,
        factory=True,
    )
