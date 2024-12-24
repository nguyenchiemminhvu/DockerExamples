#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <image-name>"
    exit 1
fi

IMAGE_NAME=$1

docker run -d -p 8080:8080 --name my_http_server_container "$IMAGE_NAME"

if [ $? -eq 0 ]; then
    echo "Container 'my_http_server_container' started successfully from image '$IMAGE_NAME'."
else
    echo "Failed to start the container."
    exit 1
fi