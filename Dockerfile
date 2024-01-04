FROM kylemanna/openvpn

RUN apk --no-cache upgrade \
  && apk --no-cache upgrade # with updated repo keys

ENV EASYRSA_VARS_FILE=''
