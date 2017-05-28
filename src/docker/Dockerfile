FROM    node

RUN     apt-get update
RUN     apt-get install -y git vim                                                                      # install tools we will need
RUN     gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3       # install latest ruby with jekyll
RUN     curl -sSL https://get.rvm.io | bash -s stable --ruby --gems=jekyll

RUN 	git clone https://github.com/OWASP/owasp-summit-2017.git                                        # clone repo with owasp summit site
RUN     npm install --quiet                                                                             # update node dependencies

