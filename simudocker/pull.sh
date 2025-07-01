#!/bin/bash

IMAGE_NAME=$1
IMAGE_FILE="images/$IMAGE_NAME.img"

if [ -f "$IMAGE_FILE" ]; then
  echo "Image '$IMAGE_NAME' already exists."
else
  echo "Simulating image pull..."
  echo "ImageName: $IMAGE_NAME" > "$IMAGE_FILE"
  echo "Pulled '$IMAGE_NAME' successfully."
fi

