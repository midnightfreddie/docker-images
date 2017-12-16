FROM centos:latest

MAINTAINER jim@midnightfreddie.com

RUN curl -L https://github.com/bitly/oauth2_proxy/releases/download/v2.1/oauth2_proxy-2.1.linux-amd64.go1.6.tar.gz | \
	tar -zxf - -C /opt

EXPOSE 4180

ENTRYPOINT ["/opt/oauth2_proxy-2.1.linux-amd64.go1.6/oauth2_proxy", "-http-address", "0.0.0.0:4180"]
