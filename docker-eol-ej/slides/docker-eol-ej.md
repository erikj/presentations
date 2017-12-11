# Docker @ EOL - ej
## Resources

- <https://hub.docker.com/u/ncareol>
  - **Docker** images
- <https://github.com/ncareol/docker-library>
  - `Dockerfile`s
  
!SLIDE
# Docker @ EOL - ej
## Tools

- macOS: [dlite](https://github.com/nlf/dlite)
  - also:
    - [Docker Toolbox](https://docs.docker.com/toolbox/overview/)
    - [dinghy](https://github.com/codekitchen/dinghy)
  - all provide faster file sharing via **NFS**

!SLIDE
# Docker @ EOL - ej
## Tools [**Docker Compose**](https://docs.docker.com/compose/overview/)

- YAML-based configuration
- Orchestration of multiple containers as 'services'
- Shorter commands

# Docker @ EOL - ej
## Tools [`phusion/baseimage`](http://phusion.github.io/baseimage-docker/)

*"A minimal Ubuntu base image modified for Docker-friendliness"*

- init system running as PID 1: `runit`
- syslog
- cron
- good for running multiple processes or services within a single container

!SLIDE
# Docker @ EOL - ej
## Tools: [`wait-for-it.sh`](https://github.com/vishnubob/wait-for-it)

> Pure bash script to test and wait on the availability of a TCP host and port

Keep Docker Compose services running while they wait for the services they depend on to fully start

*e.g.* **CatalogMaps** and **CatalogIngest** depend on `db` service

!SLIDE
# Docker @ EOL - ej
## All of my dev stacks

!SLIDE
# Docker @ EOL - ej
## Maps On A Plane

- [**osm-tiles-docker**](https://github.com/ncareol/osm-tiles-docker): load **OpenStreetMap** data & generate map tiles
  - based on [`phusion/baseimage`](http://phusion.github.io/baseimage-docker/)
- **CatalogMaps** stack
  - **MySQL** database
  - **CatalogIngest** (inotify + eventmachine)
  - **CatalogMaps** **Rails** app
- **Apache** `mod_tile`: serve map tiles

!SLIDE
# Docker @ EOL - ej
## PRESTO: LAOF facility-request web app

- **NCSA** database-less **Rails** app
- Data provided by **NCSA** **API**

!SLIDE
# Docker @ EOL - ej
## LROSE solo ii

- **RHEL 5**
- **X11**

!SLIDE
# Docker @ EOL - ej
## Prior Art

- [**Docker & Compose**](https://erikj.github.io/slides/docker-compose)

- [**Whales On A Plane**](https://erikj.github.io/slides/docker-sea2016)
