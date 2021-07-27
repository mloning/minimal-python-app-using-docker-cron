FROM python:3.8-slim

RUN apt-get update && apt-get upgrade -y && apt-get install -y cron
RUN pip install numpy

ENV WORKDIR=/app
WORKDIR ${WORKDIR}
COPY . .
RUN chmod +x $WORKDIR/app.py $WORKDIR/run.sh $WORKDIR/entrypoint.sh

#CMD = ["bash"]
ENTRYPOINT $WORKDIR/entrypoint.sh
