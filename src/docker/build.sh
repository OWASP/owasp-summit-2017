#!/usr/bin/env bash

# doing this here (in an async way)
echo "Stopping container"
#docker stop owasp-summit &

echo "Creating Docker image for Owasp Summit site"


docker build -t ruby-jekyll-node ./ruby-jekyll-node
#docker build -t jekyll-and-node ./jekyll-and-node
docker build -t diniscruz/owasp-summit    ./owasp-summit

echo "Starting container"
#docker rm owasp-summit
#docker run --rm --name owasp-summit -it -p 3433:3443 -d owasp-summit bash

#docker run --rm  -it -p 3443:3443 -p 4000:4000 owasp-summit jekyll serve --host 0.0.0.0

#open http://192.168.99.100:3000

docker ps


