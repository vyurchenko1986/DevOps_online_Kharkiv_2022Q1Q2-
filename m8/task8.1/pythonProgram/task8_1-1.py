#!/usr/bin/env python3

import pytz
from datetime import datetime

tz = pytz.timezone('Europe/Kiev')
current_datatime = datetime.now(tz)
today = current_datatime.strftime("%Y-%m-%d %H:%M:%S")

print(f"Current date and time: {today}")
