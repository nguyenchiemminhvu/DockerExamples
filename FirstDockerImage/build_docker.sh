#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <image-name> <tag>"
    exit 1
fi

IMAGE_NAME=$1
TAG=$2

docker build -t "${IMAGE_NAME}:${TAG}" .

if [ $? -eq 0 ]; then
    echo "Docker image '${IMAGE_NAME}:${TAG}' built successfully."
else
    echo "Failed to build the Docker image."
    exit 1
fi