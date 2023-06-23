# Base image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Copy application files to the container
COPY . /app

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose a port (if needed)
EXPOSE 8080

# Specify the command to run when the container starts
CMD [ "python3", "app.py" ]

