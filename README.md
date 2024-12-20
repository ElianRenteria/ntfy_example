# Reminder Program in Docker

This project is a simple Python program that sends scheduled notifications using [ntfy](https://ntfy.sh). You can run the program in a Docker container to keep it running continuously. Notifications are sent to the specified topic, and users can receive them on their iOS devices by subscribing to the topic in the ntfy app.

## Prerequisites

1. **Install the ntfy App**
   - Download and install the ntfy app on your iOS device from the [App Store](https://apps.apple.com).
   - Open the app and subscribe to the topic you want to use for notifications.
     - For example, if the topic in the script is `elian_test`, enter `elian_test` in the ntfy app to subscribe.

2. **Install Docker**
   - Ensure you have Docker installed on your system. [Get Docker](https://docs.docker.com/get-docker/).

## How to Use

1. **Clone the Repository**
   Download or clone the repository containing the `reminder.py` script and `Dockerfile`:
   ```bash
   git clone https://github.com/yourusername/reminder-docker.git
   cd reminder-docker
   ```

2. **Build the Docker Image**
   Build the Docker image for the project:
   ```bash
   docker build -t python-reminder .
   ```

3. **Run the Docker Container**
   Start the container:
   ```bash
   docker run -d --name reminder python-reminder
   ```

4. **Receive Notifications**
   Make sure you are subscribed to the topic in the ntfy app. Notifications will be sent at the scheduled time (e.g., `18:02` as set in the script).

## Configuration

- Modify the `reminder.py` script to customize the following:
  - **Topic Name:** Change `elian_test` to your desired topic name.
  - **Notification Time:** Replace `"18:02"` with the time you want notifications to be sent.

After editing the script, rebuild the Docker image and restart the container:
```bash
docker build -t python-reminder .
docker restart reminder
```

## Troubleshooting

- **No Notifications?**
  - Ensure you are subscribed to the correct topic in the ntfy app.
  - Check the container logs for errors:
    ```bash
    docker logs reminder
    ```

- **Need to Stop the Container?**
  ```bash
  docker stop reminder
  ```

## License

This project is released under the [MIT License](https://opensource.org/licenses/MIT).

