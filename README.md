# pschiffe/docker-openvpn

This [docker image](https://hub.docker.com/r/pschiffe/openvpn/) extends awesome [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn) image with simple patch, which enables you to provide ca key and cn via environment variables `CA_KEY` and `CA_CN`. The patch is really simple, so the env vars are currently the only way how to set the key and cn. By providing the password via env var, it's possible to use the image with e.g. ansible.

## Example ansible roles

In ansible folder of this repo you can find example ansible roles for this image. You can modify `sample.yml` playbook and deploy it with:
```
cd ansible
ansible-playbook sample.yml
```

There is one more playbook for creating users, which can be used like this:
```
cd ansible
ansible-playbook -e openvpn_client_name=john -e openvpn_container=normal-vpn -e openvpn_container_ca_key=another-super-secret roles/openvpn/configure-openvpn-user.yml
```
