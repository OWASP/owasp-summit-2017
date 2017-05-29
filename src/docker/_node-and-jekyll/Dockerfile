FROM      node

RUN       apt-get update
RUN       apt-get install -y git vim                                                                      # install tools we will need
RUN       gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN       curl -sSL https://get.rvm.io | bash -s stable --ruby --gems=jekyll                              # install latest ruby with jekyll

RUN       source /usr/local/rvm/scripts/rvm
RUN       jekyll --version
