
# Maps On A Plane

- Deploy **CatalogMaps** to multiple servers
  - metal and **VM** **QA** environments
  - multiple aircraft servers
    - C-130
    - G-V
    - cold spare
- Isolation
- Run on RHEL 6 and 7
  - Scientific Linux 6.7 (current)
  - CentOS 7.x (soon)


!SLIDE
# Maps On A Plane
   - => Docker
     - => Docker Compose
       - great way to orchestrate and manage Docker

!SLIDE
# Docker Images: MySQL

- Official image
- Configured via environment variables
    ```yml
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
