from databases.core import Record

from event_manager.core.event.models.event import Event


class PostgresSQLEventDecoder:

    @staticmethod
    def decode(raw_event_data: Record) -> Event:
        """
        Decode the event data from bytes to a dictionary.

        :param raw_event_data: The event data as a Record object, typically fetched from a PostgresSQL database.
        :return: The decoded event data as a dictionary.
        """
        try:
            return Event.from_primitives(
                event_id=str(raw_event_data['id']),
                title=raw_event_data['title'],
                description=raw_event_data['description'],
                price=raw_event_data['price'],
                venue=raw_event_data['venue'],
                event_date=raw_event_data['event_date'],
                event_hour=raw_event_data['event_hour'],
                created_at=raw_event_data['created_at'],
                updated_at=raw_event_data['updated_at']
            )
        except UnicodeDecodeError as e:
            raise ValueError(f"Failed to decode event data: {e}") from e