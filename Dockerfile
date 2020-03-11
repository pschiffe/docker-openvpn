FROM kylemanna/openvpn

RUN apk --no-cache upgrade

COPY cakey.patch /
RUN cd / \
  && cp /usr/share/easy-rsa/easyrsa /usr/share/easy-rsa/easyrsa.orig \
  && patch /usr/share/easy-rsa/easyrsa /cakey.patch

# backport https://github.com/OpenVPN/easy-rsa/pull/315
# until 3.0.7 is released
COPY easyrsa.patch /
RUN cd / \
  && patch /usr/share/easy-rsa/easyrsa /easyrsa.patch
