FROM debian:sid

MAINTAINER jim@midnightfreddie.com

ENV PKG_PROXY http://192.168.1.73:3128

# Point apt at my proxy
RUN echo Acquire { Retries \"0\"\; HTTP { Proxy \"${PKG_PROXY}/\"\; }\; }\; > /etc/apt/apt.conf.d/00proxy

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get -y install \
    less \
    curl \
    net-tools \
    nginx \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /srv/www/html

COPY nginx.conf /srv/www/

COPY index.html /srv/www/html/

VOLUME /srv/www

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-c","/srv/www/nginx.conf"]
