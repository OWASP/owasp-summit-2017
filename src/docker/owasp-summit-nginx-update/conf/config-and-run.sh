#!/usr/bin/env bash

echo "Starting nginx"

cd /etc/nginx/                                      # go to nginx folder

if [ -z "$CERT_PWD" ]; then
 echo "[ERROR]export CERT_PWD=d93882c2-bc29-4ffb-87d4-df895f6bf514: CERT_PWD enviroment variable is not set"
 exit 1
fi
unzip -P ${CERT_PWD} ./encrypted-cert.zip           # unzip tls cert

service filebeat restart

nginx -g "daemon off;"