#!/bin/sh

# This script was created by Nguyen Thai Minh.
# Usage rights belong to Soaru CloudSystem, a subsidiary of HiTECH Corporation.
# Copyright (c) Soaru CloudSystem 2025.

# Unmask Docker service in Firebase Studio
sudo chmod +x ./docker-unmask.sh
sudo ./docker-unmask.sh

# Build container from docker-compose.yml
docker compose up -d