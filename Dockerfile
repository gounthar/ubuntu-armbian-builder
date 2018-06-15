# Version 2.0.0
FROM ubuntu:xenial

MAINTAINER gounthar gounthar@gmail.com

RUN mount binfmt_misc -t binfmt_misc /proc/sys/fs/binfmt_misc && echo 1 > /proc/sys/fs/binfmt_misc/status && \
 apt-get update && apt-get -y install git corkscrew asciinema wget psmisc && git config --global user.email "gounthar@gmail.com" && \
 git config --global user.name "Bruno Verachten" && \
 git clone https://github.com/armbian/build && cd build && ./compile.sh BOARD=cubietruck BRANCH=next KERNEL_ONLY=yes RELEASE=xenial
