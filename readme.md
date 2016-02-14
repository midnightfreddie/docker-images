# midnightFreddie's Docker images

- package-cache - A squid server optimized for apt packages and other large downloads for repeately building container images
- ubuntu-lts-cached - Ubuntu LTS (currently 14.04) configured to use my package cache
- debian-sid-cached - Debian Sid configured to use my package cache. Because I realized my purpose for using Ubuntu LTS was for stability and maintainability, but through Docker I achieve stability through managed code/infrastructure and can roll back if needed. So using Sid for the latest upstream stable packages.
- ruby - Ruby 2.3 container with ruby2.3-dev, gcc and make
- jekyll - Currently just ruby with `gem install jekyll` run. I thought I'd need more, but not so far

## Known Issue

- My docker-compose.yml files won't build unless I comment out the current-folder build and let the dependent image build first.

## TODO

- Depersonalize. Currently things are hard-coded for me. Eventually I should change that.
- Figure out an image naming convention. There must be a sane way to name my images, but I'm using docker-compose which adds another ball of naming issues.
