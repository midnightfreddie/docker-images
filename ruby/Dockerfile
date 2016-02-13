#FROM debian:sid
# Using my own sid image which points to a local Squid proxy for updates
FROM ruby_xpoo.net-sid

MAINTAINER jim@midnightfreddie.com

ENV RUBYVER 2.3

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get -y install \
    ruby${RUBYVER} \
    ruby${RUBYVER}-dev \
    gcc \
    make \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Ruby executables have the version name after them; need to update alternatives so "ruby", "irb", etc. work
RUN for x in erb gem irb rdoc ri ruby; do update-alternatives --install /usr/bin/$x $x /usr/bin/$x${RUBYVER} 50; done
