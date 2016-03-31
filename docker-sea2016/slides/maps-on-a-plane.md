
# Maps On A Plane

  - deploy CatalogMaps and CatalogIngest to multiple servers
    - metal and VM QA environments
    - multiple aircraft servers
      - C-130
      - G-V
      - cold spare
  - isolation
  - run on RHEL 6 and 7
    - Scientific Linux 6.7 (current)
    - CentOS 7.x (soon)


!SLIDE
# Maps On A Plane
   - => Docker
     - => Docker Compose
       - great way to orchestrate and manage Docker


!SLIDE
# Docker Images: MySQL

- Official Image
- configure via environment variables

    ```yml
MYSQL_ROOT_PASSWORD: rootpassword
MYSQL_DATABASE:      catalog
MYSQL_USER:          username
MYSQL_PASSWORD:      userpassword
    ```

- entrypoint files: SQL and Shell
  - load schema and initial data
  - only run first time / if database doesn't exist


!SLIDE
# Docker Images: Apache

- extends official image to add `mod_rewrite`
- <https://github.com/ncareol/docker-library/tree/master/httpd/2.2/rewrite>
- required for development, to serve JSON files and application on same port (same-origin policy)
- not required in production, where Apache runs natively on the host and serves other resources besides **CatalogMaps**

!SLIDE
# Docker Images: Apache

<!-- - show `Dockerfile` -->


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
# Docker Images: Ruby

- custom image
- runs version of Ruby not available as official image
- built from official CentOS image
