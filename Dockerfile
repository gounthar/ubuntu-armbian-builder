# Version 2.0.0
FROM ubuntu:xenial

MAINTAINER gounthar gounthar@gmail.com
ADD ["scripts/git-proxy.sh", "/usr/local/bin/git-proxy.sh"]
RUN apt-get update && apt-get -y install git corkscrew asciinema wget psmisc && git config --global user.email "gounthar@gmail.com" && git config --global user.name "Bruno Verachten" && \
 git clone https://github.com/armbian/build && cd build && ./compile.sh