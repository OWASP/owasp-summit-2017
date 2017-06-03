#!/usr/bin/env bash

echo "Starting nginx"

cd /etc/nginx/                                      # go to nginx folder

if [ -z "$CERT_PWD" ]; then
 echo "[ERROR]export CERT_PWD environment variable is not set"
 exit 1
fi

# risk this key has been compromised
unzip -P ${CERT_PWD} ./encrypted-cert.zip           # unzip tls cert


echo "67.207.68.50    elk" >> /etc/hosts
service filebeat restart

nginx -g "daemon off;"