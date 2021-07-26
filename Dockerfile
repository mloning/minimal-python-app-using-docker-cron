FROM python:3.8-slim

# Install cron
RUN apt-get update && apt-get upgrade -y && apt-get install -y cron

# Add files
ENV WORKDIR=/app
WORKDIR ${WORKDIR}
COPY . .
RUN chmod +x $WORKDIR/run.sh $WORKDIR/entrypoint.sh

#CMD = ["bash"]
ENTRYPOINT $WORKDIR/entrypoint.sh
