#!/bin/bash

# Build the Docker image named item-app with tag v1 from the Dockerfile
docker build -t item-app:v1 .

# List the local images to verify the build result
docker images

# Rename the image to match the Docker Hub format <username>/<repository>:<tag>
docker tag item-app:v1 macchiato21/item-app:v1

# Log in to Docker Hub using the password from an environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u macchiato21 --password-stdin

# Push the image to Docker Hub
docker push macchiato21/item-app:v1
