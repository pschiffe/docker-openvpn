FROM kylemanna/openvpn

RUN apk --no-cache upgrade

COPY cakey.patch /cakey.patch
RUN cd / \
  && cp /usr/local/bin/easyrsa /usr/local/bin/easyrsa.orig \
  && patch -p 1 < /cakey.patch
