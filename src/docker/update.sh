#!/usr/bin/env bash

echo "Updating owasp summit docker image to latest version (only works ok if there are no new npm dependencies)"

docker build --no-cache=true -t diniscruz/owasp-summit ./owasp-summit-update

./start.sh

