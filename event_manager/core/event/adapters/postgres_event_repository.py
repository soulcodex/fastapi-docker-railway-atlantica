import databases
from typing import List, Text

from event_manager.core.event.models.errors import EventNotFoundError
from event_manager.core.event.models.event import Event
from event_manager.core.event.models.protocols import EventRepository
from event_manager.core.event.models.value_objects import EventId
from event_manager.core.event.adapters.postgres_event_decoder import PostgresSQLEventDecoder

from pypika import Query, Field, Schema
from pypika.queries import QueryBuilder


class PostgresSQLEventRepository(EventRepository):
    __FIELDS = [
        Field('id'),
        Field('title'),
        Field('description'),
        Field('price'),
        Field('venue'),
        Field('event_date'),
        Field('event_hour'),
        Field('created_at'),
        Field('updated_at')
    ]

    __ID_FIELD = Field('id')

    def __init__(self, db: databases.Database, schema: Text):
        self.db = db
        self.schema = schema
        self.decoder = PostgresSQLEventDecoder()

    async def search(self) -> List[Event]:
        query = self.__query_builder()
        result = await self.db.fetch_all(query=query.get_sql())
        events = [self.decoder.decode(raw_event_data=record) for record in result]
        return events

    async def fetch_by_id(self, _id: EventId) -> Event:
        query = self.__query_builder().where(self.__ID_FIELD == _id.value)
        result = await self.db.fetch_one(query=query.get_sql())
        if result is None:
            raise EventNotFoundError(event_id=_id)
        event = self.decoder.decode(raw_event_data=result)
        return event

    def __query_builder(self) -> QueryBuilder:
        schema = Schema(self.schema)
        return Query.from_(schema.events).select(*self.__FIELDS)
