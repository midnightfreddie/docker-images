FROM debian:sid

MAINTAINER jim@midnightfreddie.com

ENV PKG_PROXY http://192.168.1.73:3128

# Point apt at my proxy
RUN echo Acquire { Retries \"0\"\; HTTP { Proxy \"${PKG_PROXY}/\"\; }\; }\; > /etc/apt/apt.conf.d/00proxy

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get -y install \
    curl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD jdk-8u74-linux-x64.tar.gz /opt/

ENV JAVA_HOME /opt/jdk1.8.0_74

RUN cd /tmp \
  && curl --proxy ${PKG_PROXY} -L -O https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.2.0/elasticsearch-2.2.0.tar.gz \
  && cd /opt \
  && tar -xvf /tmp/elasticsearch-2.2.0.tar.gz

EXPOSE 9200

RUN for x in plugins config ; do mkdir -p /opt/elasticsearch-2.2.0/$x ; chown -R nobody:users /opt/elasticsearch-2.2.0/$x ; done \
  && for x in logs data; do mkdir -p /srv/es/$x ; chown -R nobody:users /srv/es/$x ; done

COPY elasticsearch.yml /opt/elasticsearch-2.2.0/config/

VOLUME /srv/es

USER nobody

CMD ["/opt/elasticsearch-2.2.0/bin/elasticsearch"]
