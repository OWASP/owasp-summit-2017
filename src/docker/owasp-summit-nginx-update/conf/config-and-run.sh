#!/usr/bin/env bash

echo "Starting nginx"

cd /etc/nginx/                                      # go to nginx folder
unzip -P ${CERT_PWD} ./encrypted-cert.zip           # unzip tls cert

nginx -g "daemon off;"