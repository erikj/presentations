# Docker

- Linux containerization system
  - *chroot on steroids*
- Provides isolation from host system and other containers without performance penalty of virtualization
- Allows for sharing of resources between host system and other containers
  - file-system
  - ports

!SLIDE
# Docker
## Virtualization vs. Containerization

![vm-vs-container stacks](images/docker_vm.jpg)

!SLIDE
# Docker

- **Images**: Packaging system
- **Containers**: Execution environment 
- **Repositories**, *e.g.* **Docker Hub**: Images distribution system

!SLIDE
# Docker

Images built via `Dockerfile`s

[Add mod_rewrite to Apache](https://github.com/ncareol/docker-library/blob/master/httpd/2.2/rewrite/Dockerfile):

```Dockerfile
FROM httpd:2.2.31
ENV HTTPD_PREFIX /usr/local/apache2
COPY modules /tmp/httpd/modules/
RUN apt-get update \
    && apt-get install -y gcc \
    && apxs -c -i /tmp/httpd/modules/proxy/mod_proxy.c /tmp/httpd/modules/proxy/proxy_util.c \
    && apxs -c -i /tmp/httpd/modules/proxy/mod_proxy_http.c  /tmp/httpd/modules/proxy/proxy_util.c \
    && apxs -c -i /tmp/httpd/modules/mod_rewrite.c \
    && rm -r /var/lib/apt/lists/* /tmp/httpd \
    && apt-get purge -y --auto-remove gcc
RUN echo 'LoadModule proxy_module modules/mod_proxy.so' >> $HTTPD_PREFIX/conf/httpd.conf
RUN echo 'LoadModule proxy_http_module modules/mod_proxy_http.so' >> $HTTPD_PREFIX/conf/httpd.conf
RUN echo 'LoadModule rewrite_module modules/mod_rewrite.so' >> $HTTPD_PREFIX/conf/httpd.conf
```

!SLIDE
# Docker

## Example Workflow

```sh
$ cat hello-world.Dockerfile
FROM alpine
CMD echo hello world

# build tagged image
$ docker build -f hello-world.Dockerfile -t hello-world .

# run image from tag
$ docker run hello-world
hello world
```
