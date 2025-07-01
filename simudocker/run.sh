#!/bin/bash

IMAGE_NAME=$1
CONTAINER_ID=$(date +%s)
CONTAINER_DIR="containers/$CONTAINER_ID"

if [ ! -f "images/$IMAGE_NAME.img" ]; then
  echo "Image '$IMAGE_NAME' not found. Try pulling it first."
  exit 1
fi

mkdir "$CONTAINER_DIR"
echo "Container from $IMAGE_NAME" > "$CONTAINER_DIR/meta.txt"
echo "running" > "$CONTAINER_DIR/status"

echo "Container ID: $CONTAINER_ID"

