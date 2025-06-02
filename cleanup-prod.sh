#!/bin/bash
set -e

echo "Cleaning up production environment..."

# Delete frontend resources
echo "Deleting frontend resources..."
kubectl delete -f k8s/prod/ --ignore-not-found=true

echo "Production environment cleanup completed!"