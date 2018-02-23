#!/bin/bash
apt-get update -qq && apt-get install -q -y --no-install-recommends \
    apt-transport-https \
    curl \
    ca-certificates \
    gnupg
curl -sS -L https://packagecloud.io/varnishcache/varnish5/gpgkey | apt-key add -
echo "deb https://packagecloud.io/varnishcache/varnish5/ubuntu/ xenial main
deb-src https://packagecloud.io/varnishcache/varnish5/ubuntu/ xenial main" > /etc/apt/sources.list.d/varnish.list
apt-get update -qq
apt-get dist-upgrade -y -q
apt-get install -q -y varnish
apt-get clean
rm -rf /var/lib/apt/lists/*
rm /build.sh
