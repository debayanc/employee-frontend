#!/bin/bash
set -e

# Create namespace if it doesn't exist
echo "Creating namespace employee-prod if it doesn't exist..."
kubectl create namespace employee-prod --dry-run=client -o yaml | kubectl apply -f -

# Apply frontend resources
echo "Deploying frontend to production environment..."
kubectl apply -f k8s/prod/

echo "Frontend deployment completed successfully!"
echo "Access the frontend at: $(kubectl get svc frontend -n employee-prod -o jsonpath='{.status.loadBalancer.ingress[0].ip || .spec.clusterIP}')"