FROM ruby_ruby

MAINTAINER jim@midnightfreddie.com

# For improved related posts
RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get -y install \
    libgsl0-dev \
    libgsl0ldbl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install jekyll

# For improved related posts
RUN gem install rb-gsl
RUN gem install classifier-reborn

ENTRYPOINT ["/usr/local/bin/jekyll"]
