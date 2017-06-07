#!/usr/bin/env bash

echo "Creating Docker image to update the Summit Site (using nginx)"

docker build --no-cache=true  -t diniscruz/owasp-summit-nginx .


#./start.sh