#!/usr/bin/env bash

# doing this here (in an async way)
echo "Stopping container"
docker stop owasp-summit &

echo "Creating Docker image for Owasp Summit site"

docker build -t owasp-summit ./.

echo "Starting container"
#docker rm owasp-summit
docker run --rm --name owasp-summit -it -p 3433:3433 -d owasp-summit

#open http://192.168.99.100:3000

docker ps


