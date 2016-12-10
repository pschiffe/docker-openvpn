FROM kylemanna/openvpn:2.0.0
MAINTAINER "Peter Schiffer" <pschiffe@redhat.com>

COPY cakey.patch /cakey.patch
RUN cd / && patch -p 1 < /cakey.patch

