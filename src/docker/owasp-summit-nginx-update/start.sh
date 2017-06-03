#!/usr/bin/env bash

./build.sh

echo "starting Summit website on Nginx"
export name=owasp-summit-nginx

docker stop ${name}
docker rm ${name}

docker run  -d -p 80:80 -p 3443:443 -e CERT_PWD="${CERT_PWD}" --name=${name} diniscruz/owasp-summit-nginx
docker ps

sleep 2
docker logs owasp-summit-nginx

#docker exec -it owasp-summit-nginx bash


curl -XGET 'https://192.168.99.100:3443/Participants/ticket-24h-owasp/Achim-Hoffmann.html' --insecure -o /dev/null
#docker logs ${name}
#docker exec owasp-summit-nginx ls -la /var/log/nginx/
#docker exec owasp-summit-nginx cat /var/log/nginx/my-access.log
#docker exec owasp-summit-nginx cat /var/log/nginx/access.log

# service filebeat restart
#curl -XGET 'http://elk.owaspsummit.org:9200/filebeat-*/_search?pretty'

