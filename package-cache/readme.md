# Squid3 Package Cache

Based on my [Using Squid To Cache Apt Updates For Debian And Ubuntu](http://midnightfreddie.com/using-squid-to-cache-apt-updates-for-debian-and-ubuntu.html)
blog, configure a Squid proxy optimized for caching Apt files, RPMs, Docker images,
and other package / installer files that would be useful to cache when building
images and containers.

Currently squid.conf is set for my personal network, so if you use this, delete my IPv6 subnet and ensure the private IPv4 range is approprite.

## TODO

- IPv6 transport from client to cache denied
- Check maximum disk size
- Make disk cache a volume?
- De-personalize acls
- Log to stdout and stderr instead of files
