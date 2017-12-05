# Docker @ EOL - ej

Tools

- macOS: [dlite](https://github.com/nlf/dlite)
  - also:
    - [Docker Toolbox](https://docs.docker.com/toolbox/overview/)
    - [dinghy](https://github.com/codekitchen/dinghy)
  - all provide faster file sharing via **NFS**

!SLIDE
# Docker @ EOL - ej

Tools

- [**Docker Compose**](https://docs.docker.com/compose/overview/)
  - YAML-based configuration
  - Orchestration of multiple containers as 'services'
  - Shorter commands

!SLIDE
# Docker @ EOL - ej

- All of my dev stacks

!SLIDE
# Docker @ EOL - ej

- **Maps On A Plane**
  - [**osm-tiles-docker**](https://github.com/ncareol/osm-tiles-docker): load data & generate map tiles
  - **CatalogMaps** stack
    - **MySQL** database
    - **CatalogIngest** (inotify + eventmachine)
    - **CatalogMaps** **Rails** app
  - **Apache** `mod_tile`: serve map tiles

!SLIDE
# Docker @ EOL - ej

- **Presto**
  - NCSA database-less Rails app
  - Data provided by NCSA API

!SLIDE
# Docker @ EOL - ej

- **LROSE** solo ii
  - **RHEL 5**
  - **X11**
