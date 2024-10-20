# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]