FROM    nginx

RUN     apt update \
        && apt install -y git unzip curl  \
        && curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.4.1-amd64.deb \
        && dpkg -i filebeat-5.4.1-amd64.deb

COPY    ./conf/encrypted-cert.zip /etc/nginx/encrypted-cert.zip

WORKDIR /home
RUN     git clone https://github.com/DinisCruz/owasp-summit-2017-site.git
WORKDIR owasp-summit-2017-site
