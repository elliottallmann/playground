#!/bin/bash
# Run this script on the server

# Taken from https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-neo4j-on-ubuntu-22-04

# Download the GPG key
curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key |sudo gpg --dearmor -o /usr/share/keyrings/neo4j.gpg


# Add to apt sources
echo "deb [signed-by=/usr/share/keyrings/neo4j.gpg] https://debian.neo4j.com stable 4.1" | sudo tee -a /etc/apt/sources.list.d/neo4j.list


# Update
sudo apt update

# Install neo4j
sudo apt install neo4j -y

# Enable the service so it starts on startup
sudo systemctl enable neo4j.service

# Start the service
sudo systemctl start neo4j.service

# Check the status
sudo systemctl status neo4j.service