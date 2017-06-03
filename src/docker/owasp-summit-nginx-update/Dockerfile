FROM    diniscruz/owasp-summit-nginx-base

COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./conf/ssl.conf /etc/nginx/ssl.conf
COPY    ./conf/config-and-run.sh /etc/nginx/config-and-run.sh

RUN     git pull origin

COPY    ./filebeat/filebeat.yml /etc/filebeat/filebeat.yml

RUN     mkdir -p /etc/pki/tls/certs
# risk: this file should be encrypted
COPY    ./cert/logstash-beats.crt /etc/pki/tls/certs/

RUN     apt install -y vim wget gnupg
RUN     echo "deb https://packages.elastic.co/beats/apt stable main" | tee -a /etc/apt/sources.list.d/beats.list
RUN     wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add -


CMD     /etc/nginx/config-and-run.sh

