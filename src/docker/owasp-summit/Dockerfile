FROM        ruby-jekyll-node

WORKDIR     /home
RUN 	    git clone https://github.com/OWASP/owasp-summit-2017.git                            # clone repo with owasp summit site
WORKDIR     owasp-summit-2017
RUN         git checkout docker-site
RUN         npm install --quiet                                                                 # update node dependencies

RUN         ./node_modules/.bin/gulp styles pug build
#EXEC         npm start

