#!/usr/bin/env bash

echo "Creating Docker image to host the Summit Site using nginx"

docker build --no-cache=true  -t diniscruz/owasp-summit-nginx-base .
