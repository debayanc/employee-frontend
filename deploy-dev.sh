#!/bin/bash
set -e

# Create namespace if it doesn't exist
echo "Creating namespace employee-dev if it doesn't exist..."
kubectl create namespace employee-dev --dry-run=client -o yaml | kubectl apply -f -

# Apply frontend resources
echo "Deploying frontend to development environment..."
kubectl apply -f k8s/dev/

echo "Frontend deployment completed successfully!"
echo "Access the frontend at: $(kubectl get svc frontend -n employee-dev -o jsonpath='{.status.loadBalancer.ingress[0].ip || .spec.clusterIP}')"