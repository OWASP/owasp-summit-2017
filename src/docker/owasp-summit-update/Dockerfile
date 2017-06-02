FROM        diniscruz/owasp-summit

RUN         git pull origin

RUN         npm run build-data
RUN         ./node_modules/.bin/gulp styles pug build
