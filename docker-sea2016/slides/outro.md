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
# Thanks!

- **SEA**
- You!
