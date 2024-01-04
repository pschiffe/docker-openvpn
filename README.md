# pschiffe/docker-openvpn

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/pschiffe/openvpn/latest?label=latest) ![Docker Pulls](https://img.shields.io/docker/pulls/pschiffe/openvpn)

This [docker image](https://hub.docker.com/r/pschiffe/openvpn/) used to extend awesome [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn) image with simple patch, which enables you to provide ca key and cn via environment variables `EASYRSA_PASSIN`, `EASYRSA_PASSOUT` and `EASYRSA_REQ_CN`. Also `EASYRSA_BATCH=1` env var is required. By providing the password via env var, it's possible to use the image with e.g. ansible.

Now the patch is part of the [easy-rsa upstream](https://github.com/OpenVPN/easy-rsa), so it's available also in the original [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn) image. I'm keeping this repository up, because it includes complete ansible example how to use this image, and optionally, the `pschiffe/openvpn` docker image may include more up to date packages than [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn).

## Example ansible roles

In ansible folder of this repo you can find example ansible roles for this image. You can modify `sample.yml` playbook and deploy it with:
```
cd ansible
ansible-playbook sample.yml
```
