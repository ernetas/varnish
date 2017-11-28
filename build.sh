#!/bin/bash
apt-get update && apt-get install -y --no-install-recommends \
    apt-transport-https \
    curl \
    ca-certificates \
    gnupg
curl -L https://packagecloud.io/varnishcache/varnish5/gpgkey | apt-key add -
echo "deb https://packagecloud.io/varnishcache/varnish5/ubuntu/ xenial main
deb-src https://packagecloud.io/varnishcache/varnish5/ubuntu/ xenial main" > /etc/apt/sources.list.d/varnish.list
apt-get dist-upgrade
apt-get install -y --no-install-recommends varnish
apt-get clean
rm -rf /var/lib/apt/lists/*
rm /build.sh
