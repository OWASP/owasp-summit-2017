#!/usr/bin/env bash

echo "starting redirect to https"

docker stop redirect-to-https
docker rm redirect-to-https

docker run  -d -p 80:80 --name=redirect-to-https diniscruz/redirect-to-https
docker ps




docker logs -f redirect-to-https

