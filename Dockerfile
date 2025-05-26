# Use official Python image
FROM python:3.10-slim

# Set working directory inside container (this is absolute path inside container)
WORKDIR /app

# Copy only requirements.txt first (for caching)
COPY app/requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source code into container
COPY app/ /app/

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
