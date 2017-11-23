#!/usr/bin/env bash

echo "Creating Docker image for Owasp Summit site"

#docker build -t ruby-jekyll-node ./ruby-jekyll-node
docker build --no-cache=true -t fzipi/owasp-summit-base-alpine ./owasp-summit-base-alpine



