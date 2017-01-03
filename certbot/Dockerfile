FROM centos:latest

MAINTAINER jim@midnightfreddie.com

# assumeyes=1 equivalent to calling yum with -y so when certbot updates it won't prompt
RUN echo assumeyes=1 >> /etc/yum.conf \
	&& cd /root \
	&& curl -O https://dl.eff.org/certbot-auto \
	&& chmod a+x certbot-auto \
	&& yum install \
		augeas-libs \
		dialog \
		gcc \
		libffi-devel \
		openssl \
		openssl-devel \
		python-devel \
		python-tools \
		python-virtualenv \
		redhat-rpm-config \
	;

ENTRYPOINT ["/root/certbot-auto"]
