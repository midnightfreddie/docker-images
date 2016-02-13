FROM ubuntu:14.04

MAINTAINER jim@midnightfreddie.com

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y \
    squid3 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

