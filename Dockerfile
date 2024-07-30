# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Set environment variables to avoid user interaction during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Install Flask using pip
RUN apt-get install -y python3-flask

# Set the working directory in the container
WORKDIR /app

# Expose port 5000 for Flask
EXPOSE 5000

# Define the command to run the Flask app
CMD ["python3", "app.py"]