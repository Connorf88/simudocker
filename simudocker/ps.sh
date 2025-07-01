#!/bin/bash

echo "Simulated Containers:"
for dir in containers/*; do
  ID=$(basename "$dir")
  STATUS=$(cat "$dir/status")
  echo "ID: $ID | Status: $STATUS"
done

