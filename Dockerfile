# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set a working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install Flask

# Expose the port that the Flask app will run on
EXPOSE 5001

# Define the command to run the application
CMD ["python", "app.py"]
