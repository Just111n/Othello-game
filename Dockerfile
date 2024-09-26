# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install Tkinter (for Debian-based systems)
RUN apt-get update && apt-get install -y python3-tk

# Run the game
CMD ["python", "gui.py"]
