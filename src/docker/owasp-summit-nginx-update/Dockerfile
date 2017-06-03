FROM    diniscruz/owasp-summit-nginx

COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./conf/ssl.conf /etc/nginx/ssl.conf
COPY    ./conf/config-and-run.sh /etc/nginx/config-and-run.sh

COPY    ./filebeat/filebeat.yml /etc/filebeat/filebeat.yml
#RUN     service filebeat restart

CMD     /etc/nginx/config-and-run.sh

