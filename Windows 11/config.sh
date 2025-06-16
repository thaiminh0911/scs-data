#!/bin/sh

# This script was created by Nguyen Thai Minh.
# Usage rights belong to Soaru CloudSystem, a subsidiary of HiTECH Corporation.
# Copyright (c) Soaru CloudSystem 2025.

# Ask the user to enter a password or generate a random one
echo "Generate a random 16-character password? (y/n)"
read -r GEN_PASS

if [ "$GEN_PASS" = "y" ] || [ "$GEN_PASS" = "Y" ]; then
  # Generate a random 16-character password (A-Z, a-z, 0-9, special characters)
  PASSWORD=$(tr -dc 'A-Za-z0-9!@#$%^&*()-_=+[]{}|;:,.<>?/' < /dev/urandom | head -c16)
else
  read -s -p "Enter password: " PASSWORD
  echo
fi

# Update PASSWORD in docker-compose.yml
sed -i "s/PASSWORD: \".*\"/PASSWORD: \"$PASSWORD\"/" docker-compose.yml

# Show login information
echo "|------------------------------------------"
echo "|Username: CloudSystem-Windows11           |"
echo "|Password: $PASSWORD                       |"
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