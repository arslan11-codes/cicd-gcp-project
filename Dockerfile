# Use official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app/ ./app/
WORKDIR /app
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
