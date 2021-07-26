#!/bin/bash

# Start the run once job.
echo "Docker container has been started"
echo "The WORKDIR env variable is $WORKDIR"

# Setup a cron schedule
crontab schedule.txt
cron -f
