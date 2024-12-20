# Use an official Python runtime as the base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY main.py /app/main.py

# Install required Python libraries
RUN pip install -r requirements.txt

# Set the default command to run the Python script
CMD ["python", "/app/main.py"]
