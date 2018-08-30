FROM        jekyll/builder
LABEL 	    MANTAINER "felipe.zipitria@owasp.org"

WORKDIR     /home
RUN 	      git clone https://github.com/OWASP/owasp-summit-2017.git                            # clone repo with owasp summit site
WORKDIR     owasp-summit-2017
RUN         git checkout letsencrypt
RUN         npm install --quiet                                                                 # update node dependencies

RUN         npm run build-data
RUN         ./node_modules/.bin/gulp styles pug build

CMD         ["npm", "start"]

