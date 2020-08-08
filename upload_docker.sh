#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=kamranhastam/api

# Step 2:  
# Authenticate & tag
docker login -u kamranhastam --password-stdin
echo "f3845d82e7da and api: $dockerpath"


# Step 3:
# Push image to a docker repository
docker tag api kamranhastam/dockerimage:firstimage
docker push kamranhastam/dockerimage:firstimage
