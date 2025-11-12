#!/bin/bash

# Update system packages
sudo yum update -y

# Install Docker
sudo yum install docker -y

# Start Docker service
sudo systemctl start docker

# Enable Docker to start at boot
sudo systemctl enable docker

# Add current user to the docker group
sudo usermod -aG docker $USER

# Verify installation
docker --version

# Test Docker installation
sudo docker run hello-world

echo "✅ Docker installed and running successfully!"
echo "⚠️ Please log out and log back in to use Docker without sudo."
