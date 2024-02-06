#!/bin/bash

# Wait for GPU to become available. Trying to fire up the Deepgram service
# right at boot time results in an error that the GPU is not yet available.
sleep 120

cd /home/deepgram/config && docker compose up -d