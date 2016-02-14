FROM debian:sid

MAINTAINER jim@midnightfreddie.com

COPY 00proxy /etc/apt/apt.conf.d/00proxy

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get -y install \
    less \
    curl \
    net-tools \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
