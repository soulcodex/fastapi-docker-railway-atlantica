from logging import Logger
from typing import Any, AsyncGenerator

from databases import Database
from typing_extensions import Annotated
from fastapi import Depends

import aiologger
import databases

from event_manager.config.environment import Settings, get_settings
import event_manager.shared.core.identifiers as identifiers
import event_manager.shared.infra.identifier_providers as identifier_providers
import event_manager.shared.utils.environment_handler as environment


async def app_settings() -> Settings:
    return get_settings()


async def logger(settings: Annotated[Settings, Depends(app_settings)]) -> Logger:
    logger_name = settings.WEB_APP_TITLE.lower().replace(' ', '-')
    return aiologger.Logger.with_default_handlers(name=f'{logger_name}-logger')


async def environment_handler() -> environment.EnvironmentHandler:
    return environment.NativeEnvironmentHandler()


async def database_connection(settings: Annotated[Settings, Depends(app_settings)]) -> AsyncGenerator[Database, Any]:
    db = databases.Database(url=str(settings.DATABASE_PG_URL), min_size=5, max_size=20)
    await db.connect()
    yield db
    await db.disconnect()


async def ulid_provider() -> identifiers.ULIDProvider:
    return identifier_providers.RandomULIDProvider()
