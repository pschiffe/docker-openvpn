FROM kylemanna/openvpn

RUN apk --no-cache upgrade

COPY cakey.patch /cakey.patch
RUN cd / \
  && cp /usr/local/bin/easyrsa /usr/local/bin/easyrsa.orig \
  && patch -p 1 < /cakey.patch

# backport https://github.com/OpenVPN/easy-rsa/pull/315
# until 3.0.7 is released
COPY easyrsa.patch /
RUN cd / \
  && patch /usr/share/easy-rsa/easyrsa /easyrsa.patch
