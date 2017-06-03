FROM    diniscruz/owasp-summit-nginx

#RUN     cat /etc/nginx/nginx.conf
COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./conf/ssl.conf /etc/nginx/ssl.conf
COPY    ./conf/cert     /etc/nginx/cert
RUN     ls    /etc/nginx/cert

COPY    ./conf/config-and-run.sh /etc/nginx/config-and-run.sh

CMD     /etc/nginx/config-and-run.sh