#!/bin/bash
apt-get update && apt-get install -y --no-install-recommends \
    apt-transport-https \
    curl \
    ca-certificates
curl -s https://packagecloud.io/install/repositories/varnishcache/varnish41/script.deb.sh | bash
apt-get install -y --no-install-recommends varnish
apt-get clean
rm -rf /var/lib/apt/lists/*
rm /build.sh
