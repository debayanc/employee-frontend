#!/bin/bash
set -e

# Build the Docker image
echo "Building frontend Docker image..."
docker build -t debayanc/employee-frontend:latest .

echo "Frontend Docker image built successfully!"

# Optionally push to Docker Hub
if [ "$1" == "--push" ]; then
  echo "Pushing image to Docker Hub..."
  docker push debayanc/employee-frontend:latest
  echo "Image pushed successfully!"
fi