#!/bin/bash
set -e

# Build the Docker image for multiple architectures
echo "Building multi-architecture frontend Docker image..."
docker buildx create --use
docker buildx build --platform linux/amd64,linux/arm64 -t debayanc/employee-frontend:latest --push .

echo "Frontend Docker image built and pushed successfully!"