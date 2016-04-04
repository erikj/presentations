<!-- osm-tiles -->

# Requirement: Base-layer Map

<!-- TODO: show some tiles -->

- Tiles need to be served on plane
  - Satcom is prohibitively expensive and slow for serving map tiles from ground
- **OpenStreetMap** (**OSM**)
  - Free, crowd-sourced map data

![](images/osm-us-tile.png)
![](images/osm-denver-tile.png)
![](images/osm-cg-tile.png)

!NOTE
Something else that I've been working on @ RAF has been updating the mapping tiles, which were last updated five years ago, and hopefully develop a workflow that lends itself to being used more frequently...

!SLIDE
# OSM Stack

- **PostgreSQL** + **PostGIS** extensions
- [**osm2pgsql**](http://wiki.openstreetmap.org/wiki/Osm2pgsql)
- [**mapnik**](http://mapnik.org/)
- **renderd**: tile generation
- **Apache** + [**`mod_tile`**](http://wiki.openstreetmap.org/wiki/Mod_tile): webserver and module serving map tiles

!NOTE
lot of moving parts, many of which have deep, complicated dependencies

!SLIDE
# Docker Image
## `openstreetmap-tiles`

Docker image w/ entire **OSM** stack

Built from Phusion's [baseimage](http://phusion.github.io/baseimage-docker/)

!SLIDE
# Phusion's [baseimage](http://phusion.github.io/baseimage-docker/)


- A 'correct' init process
- syslog
- cron
- sshd
- runit to manage and supervise service(s) within container
  - running multiple processes via runit is *encouraged* by baseimage
- setuser

!SLIDE
# Docker Image
## `openstreetmap-tiles`

- Very useful
- Multiple functions provided via `run.sh` entrypoint
- Source-code repository on **GitHub**
- Appears to be abandoned
  - no recent commits
  - not responding to issues or pull requests
- Could use some updates and enhancements

!SLIDE
# Enhancements
## `osm-tiles`

- Forked: <https://github.com/ncareol/osm-tiles-docker>
  - Shorted name!
    - `openstreetmap-tiles` => `osm-tiles`
    - 60% fewer characters!
    - <https://hub.docker.com/r/ncareol/osm-tiles>
- Updated to use latest `phusion/baseimage`
- `init()` + `startdb()` + `createuser()` + `createdb()`
  - => `initdb()`
- Allow for input to functions by specifying environment variables
  - `OSM_IMPORT_FILE`, `OSM_IMPORT_CACHE`, `OSM_MAX_ZOOM`, `OSM_RENDER_FORCE`
- Added `index.html` based on simple **OpenLayers** example, serving tiles from container
- Enabled serving only pre-generated tiles, for testing

!SLIDE
# Docker Image
## `osm-tiles`

- Initialize **PostgreSQL** database w/ **PostGIS** extensions: `initdb`
- Import **OpenStreetMap** data into **PostgreSQL** database: `import`
- Optionally pre-generate tiles: `render`
- Serve pre-generated (if available) and dynamically generated tiles from **Apache**, **renderd** and **mapnik** via an **OpenLayers** interface: `startservices`
- Serve exclusively pre-generated tiles from **Apache** via an **OpenLayers** interface: `startweb`
- Workflow : <https://github.com/ncareol/osm-tiles-docker/wiki>

!SLIDE
# `osm-tiles` workflow

```yaml
osm:
  image: "ncareol/osm-tiles"
  volumes:
    # keep postgresql database files on host in ./docker/osm:
    - "./docker/osm/postgresql:/var/lib/postgresql"
    # keep OSM tiles on host in ./docker/osm:
    - "./docker/osm/mod_tile:/var/lib/mod_tile"
    # mount OSM data file from host into Docker container
    - "./planet-latest.osm.pbf:/tmp/planet-latest.osm.pbf"
  environment:
    OSM_IMPORT_FILE:  '/tmp/planet-latest.osm.pbf'
    OSM_IMPORT_CACHE: '900'
    OSM_MAX_ZOOM:     '12'
    OSM_RENDER_FORCE: 'false'
  ports:
    - '8000:80'
  command: 'startweb'
```

`docker-compose.yml`

!SLIDE
# Workflow
## `osm-tiles`

```sh
$ docker-compose run osm initdb

$ docker-compose run osm import

$ docker-compose run osm render

$ docker-compose up

# => http://localhost:8000
```

!SLIDE

<h2 class='fragment'><i>That's one tasty Docker image!</i></h2>

<img src='images/jackson-beverage.png' />

!NOTE
As Samuel L. Jackson once said: That's one tasty Docker image!
