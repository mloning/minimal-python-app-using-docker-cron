#!/usr/bin/env python -u
from datetime import datetime

now = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
print(f"Running Python job: {now}")
