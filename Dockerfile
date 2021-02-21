FROM kylemanna/openvpn

RUN apk --no-cache upgrade

ENV EASYRSA_VARS_FILE=''
