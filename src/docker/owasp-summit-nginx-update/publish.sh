#!/usr/bin/env bash

echo "[publish] Publishing new version of site (after committing all changes and updating images"

cd ../../../_site

echo "[publish] committing latest changes and pushing to github"
git add -A
git commit -m "updating content"
git push origin

cd ../src/docker/owasp-summit-nginx-update

echo "[publish] building container"
./build.sh

echo "[publish] pushing container to Docker hub"
docker push diniscruz/owasp-summit-nginx

echo "[publish] triggering server update (via SSH)"
ssh root@owaspsummit.org ./start-nginx.sh