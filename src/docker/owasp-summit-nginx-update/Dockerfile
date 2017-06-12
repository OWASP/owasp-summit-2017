FROM    diniscruz/owasp-summit-nginx-base

COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./conf/ssl.conf /etc/nginx/ssl.conf
COPY    ./conf/config-and-run.sh /etc/nginx/config-and-run.sh

#RUN     git pull origin

COPY    ./filebeat/filebeat.yml /etc/filebeat/filebeat.yml
COPY    ./filebeat/filebeat-simple.yml /usr/share/filebeat/bin/filebeat.yml

RUN     mkdir -p /etc/pki/tls/certs

# risk: this file should be encrypted (and the current cert has been compromised since it is included in the public elk docker image)
COPY    ./_cert/logstash-beats.crt /etc/pki/tls/certs/


CMD     /etc/nginx/config-and-run.sh

