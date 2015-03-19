## Docker Installation

### Requirements

- 64-bit Linux kernel
  - 3.10+
  - or RHEL 2.6.32-431+
    - required features backported by RedHat

!SLIDE

## Docker Installation: RHEL 6.5+

- Enable **EPEL** repository

  ```
$ wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
$ sudo rpm -ivh epel-release-6-8.noarch.rpm
```
- Install `docker-io` package

  ```
$ sudo yum install docker-io
```

<https://docs.docker.com/installation/rhel/>

!NOTE
EPEL: Extra Packages for Enterprise Linux

!SLIDE

## Docker Installation: RHEL 7

- Enable the extras channel

  ```
$ sudo subscription-manager repos --enable=rhel-7-server-extras-rpms
```

- Install `docker` package

  ```
$ sudo yum install docker
```
<https://docs.docker.com/installation/rhel/>

!SLIDE

## Docker Installation: OSX

- Docker client and Linux VM running Docker

  ```
$ brew install docker boot2docker
```
