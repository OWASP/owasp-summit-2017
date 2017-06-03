FROM    nginx

RUN     apt update
RUN     apt install -y git vim

WORKDIR /home
RUN     git clone https://github.com/DinisCruz/owasp-summit-2017-site.git
WORKDIR owasp-summit-2017-site

COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
