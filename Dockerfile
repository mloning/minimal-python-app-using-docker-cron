FROM ubuntu:latest

# Install cron
RUN apt-get update && apt-get upgrade -y && apt-get install -y cron

# Add files
ENV WORKDIR=/app
WORKDIR ${WORKDIR}
COPY . .
RUN chmod +x $WORKDIR/run.sh $WORKDIR/entrypoint.sh

ENTRYPOINT $WORKDIR/entrypoint.sh
