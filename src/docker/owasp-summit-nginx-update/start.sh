#!/usr/bin/env bash

echo "starting redirect to https"
export name=owasp-summit-nginx

docker stop ${name}
docker rm ${name}

docker run  -d -p 80:80 -p 3443:443 -e CERT_PWD="${CERT_PWD}" --name=${name} diniscruz/owasp-summit-nginx
docker ps


docker logs -f ${name}

