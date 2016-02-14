FROM debian:sid

MAINTAINER jim@midnightfreddie.com

ENV PKG_PROXY http://192.168.1.73:3128

# Point apt at my proxy
RUN echo Acquire { Retries \"0\"\; HTTP { Proxy \"${PKG_PROXY}/\"\; }\; }\; > /etc/apt/apt.conf.d/00proxy

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
