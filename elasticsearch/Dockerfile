#FROM debian:sid
# Using my own sid image which points to a local Squid proxy for updates
FROM elasticsearch_xpoo.net-sid

MAINTAINER jim@midnightfreddie.com

ADD jdk-8u74-linux-x64.tar.gz /opt/

ENV JAVA_HOME /opt/jdk1.8.0_74

RUN cd /tmp \
  && curl --proxy http://192.168.1.73:3128 -L -O https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.2.0/elasticsearch-2.2.0.tar.gz \
  && cd /opt \
  && tar -xvf /tmp/elasticsearch-2.2.0.tar.gz

EXPOSE 9200

RUN for x in logs plugins config data; do mkdir -p /opt/elasticsearch-2.2.0/$x ; chown -R nobody:users /opt/elasticsearch-2.2.0/$x ; done

USER nobody

CMD ["/opt/elasticsearch-2.2.0/bin/elasticsearch"]
