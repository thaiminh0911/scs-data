#!/bin/sh

# This script was created by Nguyen Thai Minh.
# Usage rights belong to Soaru CloudSystem, a subsidiary of HiTECH Corporation.
# Copyright (c) Soaru CloudSystem 2025.

# Show login information
echo "|------------------------------------------"
echo "|Username: CloudSystem-Windows11           |"
echo "|Password: 12345678                        |"
echo "|------------------------------------------|"

# Display 5s countdown before building the container
echo -n "Start building container in "
for i in 5 4 3 2 1; do
  echo -n "$i"s" "
  sleep 1
done
echo

# Unmask Docker service in Firebase Studio
sudo chmod +x ./docker-unmask.sh
sudo ./docker-unmask.sh

# Build container from docker-compose.yml
docker compose up -d