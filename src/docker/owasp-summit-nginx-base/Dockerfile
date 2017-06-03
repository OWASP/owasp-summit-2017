FROM    nginx

RUN     apt update \
        && apt install -y git unzip curl vim wget gnupg \
        && curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.4.1-amd64.deb \
        && dpkg -i filebeat-5.4.1-amd64.deb  \

        && echo "deb https://packages.elastic.co/beats/apt stable main" | tee -a /etc/apt/sources.list.d/beats.list \
        && wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add -


COPY    ./conf/encrypted-cert.zip /etc/nginx/encrypted-cert.zip

WORKDIR /home
RUN     git clone https://github.com/DinisCruz/owasp-summit-2017-site.git
WORKDIR owasp-summit-2017-site
