FROM ruby_ruby

MAINTAINER jim@midnightfreddie.com

# Python 2.7 and Node only needed for Jekyll 2 and earlier?
# RUN export DEBIAN_FRONTEND=noninteractive \
#   && apt-get update \
#   && apt-get -y upgrade \
#   && apt-get -y install \
#     python \
#     nodejs \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install jekyll
