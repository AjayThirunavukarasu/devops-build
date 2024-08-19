#!/bin/bash

# Pull the latest image
docker pull your-dockerhub-username/your-image-name:latest

# Stop and remove the existing container
docker stop web || true
docker rm web || true

# Run the new container
docker run -d -p 80:80 --name web ajayitachi/myapp:latest

