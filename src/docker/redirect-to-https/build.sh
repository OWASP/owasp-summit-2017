#!/usr/bin/env bash

echo "Creating Docker image to redirect to https"

docker build --no-cache=true  -t diniscruz/redirect-to-https .


./start.sh