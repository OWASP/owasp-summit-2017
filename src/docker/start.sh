#!/usr/bin/env bash

echo "starting owasp summit on local docker"

echo "Stopping container"
docker stop owasp-summit

echo "Starting container"
docker rm owasp-summit
docker run --rm --name owasp-summit -it -p 3443:3443 -d diniscruz/owasp-summit

docker ps
#sleep 1
#open https://192.168.99.100:3443

docker logs -f owasp-summit



