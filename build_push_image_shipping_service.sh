#!/bin/bash
# Build Docker image dari Dockerfile dengan nama sesuai format Github Packages
docker build -t ghcr.io/umarazis/shipping-service:latest .

# Login ke Github Packages via Terminal
echo $PAT | docker login ghcr.io --username umarazis --password-stdin

# Push Docker image ke GitHub Packages
docker push ghcr.io/umarazis/shipping-service:latest