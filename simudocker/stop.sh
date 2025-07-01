#!/bin/bash

CONTAINER_ID=$1
STATUS_FILE="containers/$CONTAINER_ID/status"

if [ -f "$STATUS_FILE" ]; then
  echo "stopped" > "$STATUS_FILE"
  echo "Container $CONTAINER_ID stopped."
else
  echo "Container not found."
fi

