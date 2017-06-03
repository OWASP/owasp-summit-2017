FROM    diniscruz/owasp-summit-nginx

COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./conf/ssl.conf /etc/nginx/ssl.conf
COPY    ./conf/encrypted-cert.zip /etc/nginx/encrypted-cert.zip

COPY    ./conf/config-and-run.sh /etc/nginx/config-and-run.sh

CMD     /etc/nginx/config-and-run.sh