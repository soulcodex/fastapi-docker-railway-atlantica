from event_manager.core.event.models.value_objects import EventId


class EventNotFoundError(Exception):
    def __init__(self, event_id: EventId):
        super().__init__(f"Event with id '{event_id.value}' not found.")
        self.event_id = event_id
