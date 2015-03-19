## boot2docker

> boot2docker is a lightweight Linux distribution based on [Tiny Core Linux](http://tinycorelinux.net/) made specifically to run [Docker](https://www.docker.io/) containers. It runs completely from RAM, weighs ~27MB and boots in ~5s (YMMV). - [boot2docker.io](http://boot2docker.io/)

!SLIDE

## boot2docker

- Available for **OSX** and **Windows**

- Handy, easy to use tool for developing w/ Docker on non-Linux hosts

!SLIDE

## boot2docker

- Initialize VM

  ```
$ boot2docker init
```

- Boot VM

  ```
$ boot2docker up
```

!SLIDE

## boot2docker Configuration

```bash
$ boot2docker shellinit
Writing /Users/molecule/.boot2docker/certs/boot2docker-vm/ca.pem
Writing /Users/molecule/.boot2docker/certs/boot2docker-vm/cert.pem
Writing /Users/molecule/.boot2docker/certs/boot2docker-vm/key.pem
    export DOCKER_HOST=tcp://192.168.59.103:2376
    export DOCKER_CERT_PATH=/Users/molecule/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
$ $(boot2docker shellinit)
```
