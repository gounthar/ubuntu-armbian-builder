# Version 2.0.0
FROM ubuntu:xenial

MAINTAINER gounthar gounthar@gmail.com

RUN apt-get update && apt-get -y install git corkscrew asciinema wget psmisc && git config --global user.email "gounthar@gmail.com" && \
 git config --global user.name "Bruno Verachten" && \
 git clone https://github.com/armbian/build
RUN cd build && ./compile.sh BOARD=cubietruck BRANCH=next KERNEL_ONLY=yes RELEASE=xenial KERNEL_CONFIGURE=no
