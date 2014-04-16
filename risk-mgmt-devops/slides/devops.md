# DevOps!

![500px-Devops.svg.png](img/500px-Devops.svg.png)

http://en.wikipedia.org/wiki/File:Devops.svg

!SLIDE

# DevOps

- portmanteau of *Development* and *Operations*.
- *agile of systems*
- best practices and tools to deal w/ cloud-scale and data-center deployments of servers, *ie.* *thousands* of servers
- values: **CAMS**
  - Culture
  - Automation
  - Metrics
  - Sharing
- [*treat servers as cattle, not pets*](http://www.markhneedham.com/blog/2013/04/07/treating-servers-as-cattle-not-as-pets/)

- established practice

!SLIDE

# Version Control

- safety net that permits rollbacks
- *everything* is versioned
  - software
  - configurations
  - machine images
- accessible to developers and operations staff

!SLIDE

# Provisioning

- ensure that system has proper configuration (files, software, software versions, etc.) in automated fashion

!SLIDE

# Tools: Provisioners

- Puppet
- Chef
- Salt
- Ansible
- Shell scripts (*ad hoc*)

<!-- developers and operations staff should be equally capable and confident in pushing updates (to dependencies, software, configuration) to operations -->

!SLIDE

# Methods: Continuous Integration

QA Automation

> Continuous Integration is a software development practice where members of a team integrate their work frequently, usually each person integrates at least daily - leading to multiple integrations per day. Each integration is verified by an automated build (including test) to detect integration errors as quickly as possible.

http://martinfowler.com/articles/continuousIntegration.html

!NOTE
CTM is not doing this, but would like to. SSG is doing this.

!SLIDE

# Tools: Vagrant

> Create and configure lightweight, reproducible, and portable development environments.

http://www.vagrantup.com/

!SLIDE

# Tools: Docker

- based on **LXC**

> Docker is an open-source engine to easily create lightweight, portable, self-sufficient containers from any application. The same container that a developer builds and tests on a laptop can run at scale, in production, on VMs, bare metal, OpenStack clusters, or any major infrastructure provider.

\- http://docs.docker.io/en/latest/

!SLIDE

# Results: <=>

- Developers are able to quickly and reliably initialize development environments that mirror operations environments as closely as possible

- Operations staff are able to quickly and reliably initialize operational environments that mirror developments environments as closely as possible
