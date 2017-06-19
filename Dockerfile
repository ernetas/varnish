FROM ubuntu:latest

RUN \
  useradd -r -s /bin/false varnishd

ADD build.sh /build.sh
RUN /build.sh

COPY start-varnishd /usr/bin/start-varnishd

ENV VARNISH_PORT 80
ENV VARNISH_MEMORY 1g

EXPOSE 81
EXPOSE 6082
CMD ["start-varnishd"]
