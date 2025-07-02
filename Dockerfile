# Base image with Python
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy dependencies first to take advantage of layer caching
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose the TCP port Gunicorn will bind to
EXPOSE 8000

# Expose Gunicorn socket path within container
# ENV GUNICORN_CMD_ARGS="--bind 0.0.0.0:8000 --workers 3"

# Run Gunicorn with your wsgi.py
CMD ["gunicorn", "wsgi:app"]
