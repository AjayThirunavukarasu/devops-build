#!/bin/sh

# Pull the latest image from the production repo (private)
docker pull ajayitachi/prod:latest

# Stop and remove the existing container
docker stop web || true
docker rm web || true

# Run the new container
docker run -d -p 80:80 --name web ajayitachi/prod:latest

