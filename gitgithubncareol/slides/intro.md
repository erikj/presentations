
## `git@github.com:ncareol`

### We <span style="color:#f00;">&#10084;</span> Git, We <span style="color:#f00;">&#10084;</span> GitHub

<img src='img/eollogo_transparent.png' height=150 width=150/>
<img src='img/octocat-original.png' height=150 width=150/>

#### Erik Johnson, NCAR EOL

#### SEA Conference, 2014/04/07

!SLIDE

### NCAR Earth Observing Laboratory

### (EOL)

<img src='img/eollogo_transparent.png' height=400 width=400 />

!SLIDE

# NCAR EOL: Field Projects

- campaigns to conduct atmospheric research

- *e.g.*
  - DC3 (2012)
  - MPEX (2013)
  - SAS / NOMADSS / SOAS (2013)
  - CONTRAST (2014)

!SLIDE

# NCAR EOL: Field Catalog

- serves and archives field-project data
- used during and after project
- developed by 2-6 active Software Engineers @ any time
- administered by ~ one Software Engineer / active project

!SLIDE

# NCAR EOL: Field Catalog

- suite of web and database applications
  - *zith9* database schema (MySQL)
  - *Catalog Models* application (Ruby, ActiveRecord)
  - *Catalog Ingest* application (Ruby, ActiveRecord, inotify, EventMachine)
  - *Field Catalog* web application (Ruby on Rails, CoffeeScript, Bootstrap)
  - *Catalog Maps* web application (Ruby on Rails, CoffeeScript, OpenLayers, Bootstrap)
  - *Catalog Nagios* monitoring utility (Ruby, ActiveRecord, Nagios)
  - *Catalog Stats* command-line application (Ruby, ActiveRecord)

!SLIDE

# Git

- created by Linus Torvalds for development of Linux kernel
- initially released in 2005

http://en.wikipedia.org/wiki/Git_(software)

!SLIDE

# `$ man git`

```
$ man git

NAME
  git - the stupid content tracker

DESCRIPTION
  Git is a fast, scalable, distributed revision control system with an
  unusually rich command set that provides both high-level operations and
  full access to internals.
```

!SLIDE

# Git

- DVCS, *cf.* **Hg (Mercurial)**, **GNU Bazaar**, **BitKeeper**
- every check out is a complete, free-standing repository
- developers have a complete VCS w/o need to interact w/ central / other repositories

!SLIDE

# GitHub

<img src='img/octocat-original.png' height=200 width=200 />

> a web-based hosting service for software development projects that use the Git revision control system.

http://en.wikipedia.org/wiki/GitHub

!SLIDE

# GitHub

<img src='img/octocat-original.png' height=200 width=200 />

- most popular host of Open-Source projects

- 3.5 million users, April 2013 [1]
- 10 million repositories, December 2013 [2]

[1] https://github.com/blog/1470-five-years

[2] https://github.com/blog/1724-10-million-repositories

!SLIDE

# GitHub Organizations

- unlimited collaborators (associated users)
- unlimited public repositories
- pay for private repositories

https://github.com/pricing

!SLIDE

# GitHub Orgs: `ncareol`

- initially: Bronze, 10 private repositories, $25 / month
- later: Silver, 20 private repositories, $50 / month

https://github.com/pricing
