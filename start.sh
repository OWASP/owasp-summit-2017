#!/usr/bin/env bash

#git pull origin
#npm start

#need to build ruby-jekyll-node first

docker run -it --rm -v ${PWD}:/owasp-summit -p 9001:3001 -p 9000:9000 ruby-jekyll-node bash -c "cd owasp-summit;./node_modules/.bin/gulp"

# after website will be running on http://localhost:9000/