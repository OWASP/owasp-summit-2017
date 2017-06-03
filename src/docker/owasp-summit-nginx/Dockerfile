FROM    nginx

RUN     apt update
RUN     apt install -y git unzip curl

COPY    ./conf/encrypted-cert.zip /etc/nginx/encrypted-cert.zip
WORKDIR /home

RUN     curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.4.1-amd64.deb
RUN     dpkg -i filebeat-5.4.1-amd64.deb

RUN     git clone https://github.com/DinisCruz/owasp-summit-2017-site.git
WORKDIR owasp-summit-2017-site

#COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
