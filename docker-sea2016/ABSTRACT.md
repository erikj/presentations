# Whales On A Plane: Deploying Software To NSF / NCAR Research Aircraft w/ Docker

## Abstract

Docker is a maturing open-source, Linux-based containerization technology that provides a convenient means to package, distribute and execute software in a fast and isolated environment.

NCAR's Earth Observing Laboratory (EOL) is using Docker to deploy applications and associated services to NSF / NCAR research aircraft. In this talk, I will discuss the benefits provided by Docker, and tools, such as Docker Compose and Docker Hub, and techniques used to facilitate Docker-based deployment of NCAR EOL applications and services, which include:

- Ruby application
- Rails web application
- MySQL database
- OpenStreetMap stack: PostgreSQL, Mapnik, Renderd, Apache w/ mod_tile

I will also present some container implementation patterns and security considerations when running Docker in production.
