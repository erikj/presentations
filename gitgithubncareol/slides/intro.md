
## `git@github.com:ncareol`

### We <span style="color:#f00;">&#10084;</span> Git, We <span style="color:#f00;">&#10084;</span> GitHub

<img src='img/git-logo.png' height=150 width=150/>
&nbsp;&nbsp;&nbsp;
<img src='img/eollogo_transparent.png' height=150 width=150/>
&nbsp;&nbsp;&nbsp;
<img src='img/octocat-original.png' height=150 width=150/>

#### Erik Johnson, NCAR EOL

#### SEA Conference, 2014/04/07

http://erikj.github.io/gitgithubncareol

!NOTE
Erik Johnson, Software Engineer w/ NCAR EOL.
here to share out experience using Git and GitHub to enhance our development workflow.
I've published these slides to erikj.github.io/gitgithubncareol, so you can open the URL in your browser if you'd like to follow along or skip ahead or back. Slides are also a repository on GitHub, so if you find any problems, feel free to submit an issue or pull request.

!SLIDE

### NCAR Earth Observing Laboratory

### (EOL)

<img src='img/eollogo_transparent.png' height=400 width=400 />

!NOTE
we provide instruments, infrastructure, logistics for atmospheric research
upsondes, dropsondes, radar, Gulfstream V and C-130 research aircraft, instruments aboard NASA Globalhawke UAV

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

- ingests, serves and archives field-project data:
  - operational
  - research
  - model
- used during and after project

!SLIDE

# NCAR EOL: Field Catalog

Suite of applications:

- *zith9* database schema (MySQL)
- *Catalog Models* Rubygem (Ruby, ActiveRecord)
- *Catalog Ingest* application (Ruby, ActiveRecord, Inotify, EventMachine)
- *Field Catalog* web application (Ruby on Rails, Haml, CoffeeScript, Bootstrap)
- *Catalog Maps* web application (Ruby on Rails, Haml, CoffeeScript, OpenLayers, Bootstrap)
- *Catalog Nagios* monitoring utility (Ruby, ActiveRecord, Nagios)
- *Catalog Stats* command-line application (Ruby, ActiveRecord)

!NOTE
Applications after Catalog Models all depend on it

!SLIDE

# NCAR EOL: Field Catalog

- developed by 2-6 active Software Engineers @ any time: **CTM** team & others
- administered by ~ one Software Engineer / active project
- scrum: three times / week

!SLIDE

# Git

- Distributed revision-control system
  - *cf.* **Hg (Mercurial)**, **GNU Bazaar**, **BitKeeper**
- every check out is a complete, free-standing repository

!NOTE:
developers have a complete VCS w/o need to interact w/ central / other repositories

!SLIDE

# <img src='img/octocat-original.png' height=180 width=180 /> GitHub

> a web-based hosting service for software development projects that use the Git revision control system.

http://en.wikipedia.org/wiki/GitHub

!NOTE
launched in 2008

!SLIDE

# <img src='img/octocat-original.png' height=180 width=180 /> GitHub

- *Social Coding*
- hosts git repositories
- project-management platform
  - similar to Gitorious, GitLab, JIRA, Beanstalk, Fog Creek, Bugzilla, etc.
- most popular host of Open-Source projects
  - 3.5 million users, April 2013 [1]
  - 10 million repositories, December 2013 [2]

[1] https://github.com/blog/1470-five-years

[2] https://github.com/blog/1724-10-million-repositories

!NOTE
motto: Social Coding. Mascot: Octocat.

!SLIDE

# GitHub Organizations

- unlimited collaborators (associated users)
- unlimited public repositories
- pay for private repositories

https://github.com/pricing

!NOTE
organizations = way to consolidate users and repositories.

!SLIDE

# `github.com/ncareol`

- 15 private repositories
- 4 public repositories
- 8 teams
- 13 members (users)
- initial plan: Bronze, 10 private repositories, $25 / month
- later: Silver, 20 private repositories, $50 / month

https://github.com/pricing

!NOTE
this is much cheaper than paying staff developers and / or system administrators to maintain similar functionality
