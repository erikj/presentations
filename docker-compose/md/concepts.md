## Concepts: Containerization

- isolated execution environments
- *"chroot on steroids"*
- *"Containerization is the new virtualization"*
- Linux Control Groups (cgroups) <http://en.wikipedia.org/wiki/Cgroups>
- resource limits

!SLIDE

## Concepts: Containerization vs. Virtualization

![vm-vs-container stacks](img/docker_vm.jpg)

!SLIDE

## Concepts: Docker

- Docker, Inc., formerly dotCloud
- Docker Open-Source Project

!SLIDE

## Docker

Engine and interface to containers

<img src='img/Docker-linux-interfaces.svg' height=400/>

\- <http://en.wikipedia.org/wiki/Docker_%28software%29>

!SLIDE

## Docker Images

- Filesystems containing a (usually) minimal Linux OS
- Copy-on-write filesystems
- most images are built on a series of underlying images
- Git-like workflow, committed* and referenced by checksums and tags

\* no longer recommended

!SLIDE

## Dockerfiles

plain-text files w/ directives for building Docker images

!SLIDE

## Dockerfile Example

![example Dockerfile](img/example-dockerfile.png)

<http://www.dockerbook.com/code/4/apache2/Dockerfile>

!SLIDE

## Docker Registry

- Centralized repository of Docker images
- <https://github.com/docker/docker-registry>
- [Docker Hub](https://hub.docker.com/) - public (free) and private (paid) registries
- [Quay.io](https://quay.io/) - private (paid) registry

!SLIDE

## Docker Containers

- running instance of an image
- image + config + invocation = container
