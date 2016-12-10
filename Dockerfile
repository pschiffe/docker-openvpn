FROM kylemanna/openvpn:latest
MAINTAINER "Peter Schiffer" <pschiffe@redhat.com>

COPY cakey.patch /cakey.patch
RUN cd / \
  && cp /usr/local/bin/easyrsa /usr/local/bin/easyrsa.orig \
  && patch -p 1 < /cakey.patch

