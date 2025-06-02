#!/bin/bash
set -e

echo "Using nginx:alpine image from Docker Hub"
echo "No need to build a custom image as we're using ConfigMaps for content"
echo ""
echo "To deploy:"
echo "  ./deploy-dev.sh    # For development environment"
echo "  ./deploy-prod.sh   # For production environment"