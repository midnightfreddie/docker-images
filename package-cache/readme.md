# Squid3 Package Cache

Based on my [Using Squid To Cache Apt Updates For Debian And Ubuntu](http://midnightfreddie.com/using-squid-to-cache-apt-updates-for-debian-and-ubuntu.html)
blog, configure a Squid proxy optimized for caching Apt files, RPMs, Docker images,
and other package / installer files that would be useful to cache when building
images and containers.

Currently squid.conf is set for my personal network, so if you use this, delete my IPv6 subnet and ensure the private IPv4 range is approprite.

The main changes to the default squid.conf is to allow larger files to be stored and to
use a cache policy that favors keeping large files in the cache for byte-hit optimization.

## Use

Configure the container as a target for http proxies. Example: for caching apt files for Ubuntu or
other Debian-based distributions, add this snippet as "00-proxy" or similar name to /etc/apt/apt.conf.d

    Acquire {
            Retries "0";
            HTTP {
                    Proxy "http://address-or-URL-of-squid-proxy.example.tld:3128/";
            };
    };

## TODO

- IPv6 transport from client to cache denied
- Check maximum disk size
- Make disk cache a volume?
- De-personalize acls
- Log to stdout and stderr instead of files
