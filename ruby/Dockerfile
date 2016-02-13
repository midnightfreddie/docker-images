FROM ruby_xpoo.net-ubuntu

MAINTAINER jim@midnightfreddie.com

COPY 00-proxy /etc/apt/apt.conf.d/00-proxy

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y \
    ruby \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
