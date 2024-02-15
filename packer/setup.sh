#!/bin/bash

# Setup script for Deepgram on-prem image. This is run by Packer when creating the image.
# YOU WILL NEED TO EDIT THE ENVIRONMENT VARIABLES BELOW BEFORE THIS WILL WORK.

export DEEPGRAM_USERNAME='your-deepgram-quay-username'
export DEEPGRAM_PASSWORD='your-deepgram-quay-password'

set -eux

# Create deepgram directories.
sudo -u deepgram mkdir /home/deepgram/config
sudo -u deepgram mkdir /home/deepgram/models

# Copy over files from host.
sudo cp /tmp/deepgram/config/* /home/deepgram/config
sudo chown deepgram:deepgram /home/deepgram/config/*
sudo chmod 755 /home/deepgram/config/start.sh
sudo chmod 755 /home/deepgram/config/stop.sh

# Install NVIDIA driver.
sudo /opt/deeplearning/install-driver.sh

# Install Deepgram images.
sudo -u deepgram docker login quay.io --username ${DEEPGRAM_USERNAME} -p ${DEEPGRAM_PASSWORD}

# Fetch Docker images.
sudo -u deepgram docker pull quay.io/deepgram/onprem-engine:release-240104
sudo -u deepgram docker pull quay.io/deepgram/onprem-api:release-240104

# Fetch models.
cd /home/deepgram/models
# EDIT THE FOLLOWING URLS TO POINT TO THE ENCRYPTED MODEL FILES PROVIDED BY DEEPGRAM.
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/XXXXXXX
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/YYYYYYY
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/ZZZZZZZ

# Install Docker Compose.
sudo apt-get update -y
sudo apt-get install docker-compose docker-compose-plugin -y

# Disable Jupyter service, which is part of the base image we are using.
sudo systemctl mask jupyter
sudo systemctl stop jupyter

# Ensure start script is run on instance boot.
sudo cp /tmp/deepgram/config/deepgram.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable deepgram
