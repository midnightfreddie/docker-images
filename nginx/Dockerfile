#FROM debian:sid
# Using my own sid image which points to a local Squid proxy for updates
FROM nginx_xpoo.net-sid

MAINTAINER jim@midnightfreddie.com

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get -y install \
    nginx \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-c","/srv/www/nginx.conf"]
