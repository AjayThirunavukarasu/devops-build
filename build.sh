#!/bin/bash

# Build Docker image
docker-compose build

# Tag the image (replace `your-image-name` with your preferred name)
docker tag myapp:latest ajayitachi/myapp:latest

# Push the image to Docker Hub (optional, only if you plan to use Docker Hub)
docker push ajayitachi/myapp:latest

