# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose the app port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
