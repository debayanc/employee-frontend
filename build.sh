#!/bin/bash
set -e

# Build the Docker image
echo "Building frontend Docker image..."
docker build -t employee-frontend:latest .

echo "Frontend Docker image built successfully!"