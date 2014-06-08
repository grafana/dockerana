dockerana
=========

pitch:

initial setup :

* disclaimer about logs & disk space (upstart will rotate/etc; but growth of backend, etc.)

ubuntu 14.04 (assumes vanilla install):

official install from http://docs.docker.io/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit

```
sudo apt-get update
sudo apt-get install docker.io
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
sudo sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
```

make these changes :

(FIXME deal with situation where pre-existing docker_opts exist/ordering/etc)

```
printf "\n# Added for dockerana log aggregation\nDOCKER_OPTS=\" -D\"\n" | sudo tee -a /etc/default/docker.io > /dev/null
```

Go ahead and start docker:

```
sudo service docker.io start
```





