FROM centos:latest

MAINTAINER jim@midnightfreddie.com

# assumeyes=1 equivalent to calling ym with -y
RUN echo assumeyes=1 >> /etc/yum.conf \
	&& cd /root \
	&& curl -O https://dl.eff.org/certbot-auto \
	&& chmod a+x certbot-auto \
	; /root/certbot-auto \
		certonly \
		--standalone \
		--standalone-supported-challenges http-01 \
		--agree-tos \
		--email jim@jimnelson.us \
		--domains www.jimnelson.us \
		--dry-run \
		-q \
	|| /bin/true
