<!-- Outro -->

# Lessons Learned
- `docker0` ethernet interface and `iptables`
- Lock versions
  - **Docker** images and installed software
  - `osm2pgsql` error
    - <https://github.com/geo-data/openstreetmap-tiles-docker/issues/18>
- See what's already out there, use or adapt to suit your needs
  - Build on existing images
  - Modify existing images by editing their `Dockerfile`s and building new images

!SLIDE
# Conclusions

- **Docker**: mature, thriving ecosystem, works as advertisted
- Don't have to worry about dependency resolution / dependency hell on different systems, Linux distributions
- Easy to test and run different versions of software on same system
- **Docker Compose** is a huge enhancement to **Docker** user interface
- Different implementation patterns work, use according to your needs

!SLIDE

<h3 class='fragment' >Don't get bitten by software dependencies</h3>

![](images/still-of-kenan-thompson-in-snakes-on-a-plane.jpg)

<h1 class='fragment'>
  Use Docker
  <img src='images/docker-logo.png' height=120px; alt='Docker logo' style='vertical-align:middle;'/>
</h1>

!NOTE
Don't get bitten by software dependencies, use Docker

!SLIDE
# Thanks!

- **NCAR SEA**
- You!

[erikj.github.io/slides/docker-sea2016](http://erikj.github.io/slides/docker-sea2016)

`ej@ucar.edu`
