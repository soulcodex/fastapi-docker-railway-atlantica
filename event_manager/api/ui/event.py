from typing import Text
from datetime import date, time, datetime

from pydantic import BaseModel


class EventView(BaseModel):
    id: Text
    title: Text
    description: Text
    price: Text
    venue: Text
    event_date: date
    event_hour: time
    updated_at: datetime
