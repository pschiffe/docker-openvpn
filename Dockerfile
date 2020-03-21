FROM kylemanna/openvpn

RUN apk --no-cache upgrade

# until https://github.com/OpenVPN/easy-rsa/pull/368 is merged
RUN wget -O /usr/share/easy-rsa/easyrsa https://github.com/pschiffe/easy-rsa/raw/master/easyrsa3/easyrsa \
  && chmod 0775 /usr/share/easy-rsa/easyrsa

ENV EASYRSA_VARS_FILE=''
