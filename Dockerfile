# Build on top of base image
FROM python:3.8-slim

# Install system packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y cron

# Install Python packages
RUN pip install numpy

# Set up working directory
ENV WORKDIR=/app
WORKDIR ${WORKDIR}

# Copy content from current directory into image
COPY . .

# Update permissions
RUN chmod +x $WORKDIR/app.py $WORKDIR/run.sh $WORKDIR/entrypoint.sh

# Define default run command
CMD = ["bash"]
ENTRYPOINT $WORKDIR/entrypoint.sh
