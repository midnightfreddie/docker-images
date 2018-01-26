FROM centos:latest

MAINTAINER jim@midnightfreddie.com

RUN mkdir -p $XDG_DATA_HOME \
	&& mkdir -p /etc/letsencrypt \
	&& cd /root \
	&& curl -O https://dl.eff.org/certbot-auto \
	&& chmod a+x certbot-auto \
	&& /root/certbot-auto --non-interactive --os-packages-only

# To save the auth and cert data
VOLUME /etc/letsencrypt

# To share the Python virtual environment to prevent from rebuilding each run if --volumes-from used
VOLUME /opt/eff.org/certbot/

EXPOSE 80

ENTRYPOINT ["/root/certbot-auto"]
