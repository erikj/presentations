# Objective

Replace **MCD** w/ **CatalogMaps**

<p class="fragment"><b>=> Maps On A Plane!</b></p>

!SLIDE
# Maps On A Plane

- Deploy **CatalogMaps** to multiple servers
  - metal and **VM** **QA** environments
  - multiple aircraft servers
    - **C-130**
    - **G-V**
    - cold spare
- Run in isolation
- Run on **RHEL** `6` and `7`
  - **Scientific Linux** `6.7` (current)
  - **CentOS** `7.x` (soon)

!NOTE
Isolation: maps is developed and maintained by team separate from RAF
This sounds like a great use-case for Docker

!SLIDE
# Docker

<img src='images/docker-logo.png' height=120px; alt='Docker logo' style='vertical-align:bottom;'/>

- **Linux** *containerization* engine and interface
- Based on **Linux**-kernel [**cgroups**](http://en.wikipedia.org/wiki/Cgroups) (*container* groups)
- *"chroot on steroids"*
- Isolated execution environments
- No emulation penalty like **Virtualization**

!SLIDE
# Docker Images

- Filesystems containing a (usually) minimal Linux OS
- Typically built up from a base image to serve a single program
- Most images are built on a series of underlying images or 'layers'
- **Git**-like workflow, committed* and referenced by checksums and tags
- Nominally built via a `Dockerfile`
- Running an image creates a **Docker** *container*

** no longer recommended*

!NOTE
Dockerfile: will provide examples later

!SLIDE
# Docker Registry

- Centralized repository of **Docker** images
- [**Docker Hub**](https://hub.docker.com/) - public (free) and private (paid) repositories
- [Quay.io](https://quay.io/) - private (paid) registry

!SLIDE
# Docker

<img src='images/docker-logo.png' height=120px; alt='Docker logo' style='vertical-align:bottom;'/>

- **Images**: packaging system
- **Registry**: package distribution
- **Containers**: fast, isolated, package execution

!SLIDE
# Maps On A Plane: Stack

- **MySQL** database w/ **Field-Catalog** schema
- **CatalogIngest**: **Ruby**, **ActiveRecord** application
- **CatalogMaps**: **Ruby-on-Rails** application
- **Apache**: web server

!SLIDE
# Docker Images: MySQL

- Official image
- Configured via environment variables

    ```yaml
    MYSQL_ROOT_PASSWORD: rootpassword
    MYSQL_DATABASE:      catalog
    MYSQL_USER:          username
    MYSQL_PASSWORD:      userpassword
    ```

- Entrypoint files: **SQL** and **Shell**
  - load schema and initial data
  - only run first time / if database doesn't exist

!SLIDE
# Docker Images: Apache

- Extends official image to add `mod_rewrite`
- <https://github.com/ncareol/docker-library/tree/master/httpd/2.2/rewrite>
- Required for development, to serve **JSON** files and application on same port (same-origin policy)
- Not required in production, where **Apache** runs natively on the host and serves other resources besides **CatalogMaps**

!SLIDE
# Docker Images: Apache

`Dockerfile`:

```Dockerfile
FROM httpd:2.2.31
MAINTAINER Erik Johnson <ej@ucar.edu>
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
# Docker Images: catalog-ruby

- Custom image built from official **CentOS** image
- Runs version of **Ruby** not available as official image
- <https://github.com/ncareol/docker-library/tree/master/catalog-ruby/1.9.3>
- Minimal image w/ only dependencies for **Field-Catalog** **Ruby** / **Rails** apps

!SLIDE
# Docker Images: catalog-ruby

```Dockerfile
FROM centos:7
MAINTAINER Erik Johnson <ej@ucar.edu>
ENV RUBY_VERSION 1.9.3-p545
ENV BUILD_PACKAGES_KEEP make gcc patch tar gcc-c++
ENV BUILD_PACKAGES_TMP autoconf automake libffi-devel openssl-devel \
                       zlib-devel bzip2 readline-devel
ENV PACKAGES_RM autoconf perl libselinux-devel m4 \
                keyutils-libs-devel keyutils-libs-devel libcom_err-devel libsepol-devel
COPY src/ruby-install-0.5.0.tar.gz src/ruby-$RUBY_VERSION.tar.bz2 \
     /tmp/
# ...
```

[`Dockerfile`](https://github.com/ncareol/docker-library/blob/master/catalog-ruby/1.9.3/Dockerfile)

!SLIDE
# Docker Images: catalog-ruby

```Dockerfile
# ...
RUN yum install -y $BUILD_PACKAGES_KEEP $BUILD_PACKAGES_TMP && \
    cd /tmp && \
    tar -xzvf /tmp/ruby-install-0.5.0.tar.gz && \
    cd ruby-install-0.5.0 && \
    make install && \
    cd /tmp && \
    ruby-install --system -u file:///tmp/ruby-$RUBY_VERSION.tar.bz2 \
      ruby $RUBY_VERSION && \
    rm -rf ruby-$RUBY_VERSION.tar.bz2 \
      /usr/local/src/ruby-$RUBY_VERSION* \
      ruby-install-0.5.0 ruby-install-0.5.0.tar.gz && \
    yum -y --setopt=tsflags=noscripts remove \
      $BUILD_PACKAGES_TMP $PACKAGES_RM && \
    yum -y clean all
# ...
```

[`Dockerfile`](https://github.com/ncareol/docker-library/blob/master/catalog-ruby/1.9.3/Dockerfile) (continued)

!NOTE
keep image small by installing and removing source files and package dependencies in single RUN command

!SLIDE
# Docker Images: Ruby

```Dockerfile
# ...
COPY gemrc /root/.gemrc

# install mysql and dependency for mysql2 gem
RUN yum install -y mariadb mariadb-devel && \
    yum -y clean all

# install bundler
RUN gem install bundler

RUN mkdir /app
WORKDIR /app
```

[`Dockerfile`](https://github.com/ncareol/docker-library/blob/master/catalog-ruby/1.9.3/Dockerfile) (continued)

!SLIDE
# Running Containers: MySQL

```sh
$ docker create \
  --name catalog-db \
  --publish-all \
  --env "MYSQL_ROOT_PASSWORD=rootpw" \
  --env "MYSQL_DATABASE=catalog" \
  --env "MYSQL_USER=dockeruser" \
  --env "MYSQL_PASSWORD=dockerpw" \
  --volume "../docker/db/mysql:/var/lib/mysql" \
  --volume "./docker/mysql/my-medium-innodb.cnf:/etc/mysql/conf.d/my-medium-innodb.cnf" \
  --volume "./db/sql/acserver/001.farskol.zith9.schema.sql:/docker-entrypoint-initdb.d/001.farskol.zith9" \
  --volume "./db/sql/acserver/002.data.common.sql:/docker-entrypoint-initdb.d/002.data.common.sql" \
  --volume "./db/sql/acserver/003.data.gv.sql:/docker-entrypoint-initdb.d/003.data.gv.sql" \
  mysql:5.5

$ docker start catalog-db
```

!SLIDE
# Running Containers: CatalogMaps

```sh
$ docker create \
  --name catalog-maps \
  --link catalog-db
  --expose '8080:8080'
  --publish-all \
  --env "MYSQL_ROOT_PASSWORD=rootpw" \
  --env "MYSQL_DATABASE=catalog" \
  --env "MYSQL_USER=dockeruser" \
  --env "MYSQL_PASSWORD=dockerpw" \
  --volume "./:/app" \
  --volume "../products/html:/catalog/html" \
  --entrypoint ./bin/unicorn-runner
  ncareol/catalog-ruby-1.9.3-p545:0.0.5

$ docker start catalog-maps
```

!SLIDE
# Container Orchestration

<img src='images/fragile.png' height='240' />

- Linking containers by names or IDs
- Managing environment variables
- Recreating and restarting containers when params change
- Managing boot order of containers

!NOTE
Orchestrating containers is a pain! Fragile is no way to run robust, mission-critical services...

!SLIDE
# Container Orchestration

<img src='images/fragile.png' height='240' />

## `:(`

!SLIDE
![Dublin Philharmonic Orchestra performing Tchaikovsky's Symphony No. 4 in Charlotte, North Carolina, USA, by Derek Gleeson](images/orchestra.jpg)

[Dublin Philharmonic Orchestra performing Tchaikovsky's Symphony No. 4 in Charlotte, North Carolina, USA, by Derek Gleeson](https://en.wikipedia.org/wiki/Orchestra#/media/File:Dublin_Philharmonic_Orchestra_performing_Tchaikovsky%27s_Symphony_No_4_in_Charlotte,_North_Carolina.jpg)

[CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)

!NOTE
Orchestration shouldn't be a pain, it should be a harmonious joy

!SLIDE
# [Docker Compose](https://docs.docker.com/compose/)

> Compose is a tool for defining and running multi-container Docker applications.

- Shell script
- Open Source
- Part of **Docker** project
- Configured via **Yaml** file
- Allows configuration and management of containers

!SLIDE
# [Docker Compose](https://docs.docker.com/compose/)

```yaml
db:
  image: 'mysql:5.5' # https://hub.docker.com/_/mysql/
  environment:
    MYSQL_ROOT_PASSWORD: 'rootpw'
    MYSQL_DATABASE:      'catalog'
    MYSQL_USER:          'dockeruser'
    MYSQL_PASSWORD:      'dockerpw'
  volumes:
    - '../docker/db/mysql:/var/lib/mysql'
    - './docker/mysql/my-medium-innodb.cnf:/etc/mysql/conf.d/my-medium-innodb.cnf'
    - './db/sql/acserver/001.farskol.zith9.schema.sql:/docker-entrypoint-initdb.d/001.farskol.zith9.schema.sql'
    - './db/sql/acserver/002.data.common.sql:/docker-entrypoint-initdb.d/002.data.common.sql'
    - './db/sql/acserver/003.data.gv.sql:/docker-entrypoint-initdb.d/003.data.gv.sql'
# ...
```

`docker-compose.yml`

!SLIDE
# [Docker Compose](https://docs.docker.com/compose/)

```yaml
# ...
maps:
  image: 'ncareol/catalog-ruby-1.9.3-p545:0.0.5'
  links:
    - 'db'
  environment:
    RAILS_ENV: 'production'
  volumes:
    - '.:/app'
    - '../products/html:/catalog/html' # catalog files
  ports:
    - '8088:8080'
  command: './bin/unicorn-runner'
# ...
```

`docker-compose.yml` (continued)

!SLIDE
# [Docker Compose](https://docs.docker.com/compose/)

```yaml
# ...
ingest:
  image: 'ncareol/catalog-ruby-1.9.3-p545:0.0.5'
  links:
    - 'db'
  volumes:
    - '../catalog-ingest:/app'
    - '../products/incoming:/catalog/incoming'
    - '../products/jail:/catalog/jail'
    - '../products/html:/catalog/html'
  command: './bin/monitor -c config/gv.yml -w 15 -p tmp/gv-monitor-queue.pid --stdout --debug'
```

`docker-compose.yml` (continued)

!SLIDE
# [Docker Compose](https://docs.docker.com/compose/)

```sh
$ docker-compose up -d db      # start db service, daemonized

$ docker-compose up            # start all services in foreground

$ docker-compose run maps rake # run rake command in maps container

$ docker-compose run maps bash # start bash shell in maps container

$ docker-compose ps            # display states of services

$ docker-compose stop          # stop all services
```

