from typing import Callable

from dotenv import load_dotenv
from pydantic import PostgresDsn, Field
from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    ENV: str = Field(default='development')
    PYTHONPATH: str = Field(default='$PWD')
    LOG_LEVEL: str = Field(default='debug')
    DATABASE_PG_URL: PostgresDsn = Field(default='postgresql://event_manager_db_role:password@database:5432/event_manager')
    WEB_APP_DEBUG: bool = Field(default=False)
    WEB_APP_TITLE: str = Field(default='Event Manager API')
    WEB_APP_DESCRIPTION: str = Field(default='A powerful event manager API made to manage events with ease')
    WEB_APP_VERSION: str = Field(default='1.0.0')
    WEB_SERVER_HOST: str = Field(default='0.0.0.0')
    WEB_SERVER_PORT: int = Field(default=8000)
    WEB_SERVER_RELOAD: bool = Field(default=False)

    model_config = SettingsConfigDict()


def _configure_initial_settings() -> Callable[[], Settings]:
    load_dotenv(dotenv_path='.env')
    settings = Settings()

    def fn() -> Settings:
        return settings

    return fn


get_settings = _configure_initial_settings()
