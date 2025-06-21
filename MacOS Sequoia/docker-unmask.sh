#!/bin/sh

# This script was created by Nguyen Thai Minh.
# Usage rights belong to Soaru CloudSystem, a subsidiary of HiTECH Corporation.
# Copyright (c) Soaru CloudSystem 2025.

# Unmask Docker service in Firebase Studio
sudo systemctl unmask docker.service
sudo systemctl unmask docker.socket
sudo systemctl unmask containerd
sudo systemctl enable containerd
sudo systemctl start containerd
sudo systemctl daemon-reload
sudo systemctl restart docker