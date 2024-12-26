# Use an official Python runtime as the base image
FROM python:3.11-slim

# Set timezone environment variable
ENV TZ=America/Los_Angeles

# Install tzdata package and set timezone
RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY main.py /app/main.py
COPY requirements.txt /app/requirements.txt

# Install required Python libraries
RUN pip install -r requirements.txt

# Set the default command to run the Python script
CMD ["python", "/app/main.py"]
