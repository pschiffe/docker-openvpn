# pschiffe/docker-openvpn

This [docker image](https://hub.docker.com/r/pschiffe/openvpn/) extends awesome [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn) image with simple patch, which enables you to provide ca key and cn via environment variables `CA_KEY` and `CA_CN`. The patch is really simple, so the env vars are currently the only way how to set the key and cn. By providing the password via env var, it's possible to use the image with e.g. ansible.
