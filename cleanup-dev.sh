#!/bin/bash
set -e

echo "Cleaning up development environment..."

# Delete frontend resources
echo "Deleting frontend resources..."
kubectl delete -f k8s/dev/ --ignore-not-found=true

echo "Development environment cleanup completed!"