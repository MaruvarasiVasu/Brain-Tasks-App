#!/bin/bash
echo "Starting deployment to EKS..."

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Deployment completed successfully!"

