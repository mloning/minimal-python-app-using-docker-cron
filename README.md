# Minimal Python application using Docker and cron

## Overview

| File | Description |
|---|---|
| `Dockerfile` | [Docker] instructions how to build image. |
| `app.py` | [Python] application. | 
| `entrypoint.sh` | [Docker] instructions how to run the container.  |
| `run.sh` | Bash script to run the application. |
| `schedule.txt` | Configuration for [cron] scheduler. | 

[docker]: https://www.docker.com
[python]: https://www.python.org
[cron]: https://en.wikipedia.org/wiki/Cron

## Usage
To launch the app, first build the image, then run the container:

1. `docker build --rm -t python-app .`
2. `docker run -t -i --rm --name python-app -v <output-directory>:/output python-app`

The `<output-directory>` is a directory on the host machine. Use the full, absolute path to specify it. It is used for writing out logs from the application.

The configuration in `schedule.txt` will run the Python script every minute.

To inspect the running container, you can: 

* exectute commands inside the container, e.g. `docker exec python-app bash -c "ls -l /app/"`
* run the container in interactive mode by commenting out the `ENTRYPOINT` line in the `Dockerfile` and re-running the steps above 
