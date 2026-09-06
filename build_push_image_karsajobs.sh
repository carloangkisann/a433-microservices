#!/bin/bash

# Build the Docker image from the Dockerfile
docker build -t macchiato21/karsajobs:latest .

# Log in to Docker Hub using the password from an environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u macchiato21 --password-stdin

# Push the image to Docker Hub
docker push macchiato21/karsajobs:latest