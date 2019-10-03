#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=tega/ml-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-app --image=docker.io/$dockerpath:v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/ml-app 8000:80
