#!/bin/sh

# Build Docker image
docker-compose build

# Tag the image for development
docker tag myapp:latest ajayitachi/dev:latest

# Tag the image for production
docker tag myapp:latest your-username/prod:latest

# Push the image to the development repo (public)
docker push ajayitachi/dev:latest

# Push the image to the production repo (private)
docker push ajayitachi/prod:latest

