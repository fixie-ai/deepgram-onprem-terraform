#!/bin/bash

# Setup script for Deepgram on-prem image. This is run by Packer when creating the image.

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
sudo -u deepgram docker login quay.io --username 'deepgram+ab45ae51-6875-47c6-b1c2-ad9c4ced0085' \
  -p MCFHR92K3MT494QT8W1XFYLAOWS89ZHIQEGX2N1S7NHKCYW75762Q5055PGW252X

# Fetch Docker images.
sudo -u deepgram docker pull quay.io/deepgram/onprem-engine:release-240104
sudo -u deepgram docker pull quay.io/deepgram/onprem-api:release-240104

# Fetch models.
cd /home/deepgram/models
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/70148593-0514-4feb-991a-c3b3da1d4b33/models/2-general-nova.en.formatted.batch.a375937a.dg
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/70148593-0514-4feb-991a-c3b3da1d4b33/models/2-general-nova.en.formatted.streaming.a10b3ee9.dg
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/70148593-0514-4feb-991a-c3b3da1d4b33/models/2-general-nova.en.non-formatted.batch.f2b8fbec.dg
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/70148593-0514-4feb-991a-c3b3da1d4b33/models/2-general-nova.en.non-formatted.streaming.c9d824fb.dg
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/70148593-0514-4feb-991a-c3b3da1d4b33/models/2-general-nova.es.batch.4f82af92.dg
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/70148593-0514-4feb-991a-c3b3da1d4b33/models/2-general-nova.es.streaming.26cf4c00.dg
sudo -u deepgram curl -O https://deepgram-onprem.s3.us-east-2.amazonaws.com/70148593-0514-4feb-991a-c3b3da1d4b33/models/language-detector.b1bfd18c.dg

# Install Docker Compose.
sudo apt-get update -y
sudo apt-get install docker-compose docker-compose-plugin -y

# Disable Jupyter service, which is part of the base image we are using.
sudo systemctl disable jupyter.service
sudo systemctl stop jupyter.service

# Ensure start script is run on instance boot.
sudo cp /tmp/deepgram/config/deepgram.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable deepgram.service