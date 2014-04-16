# DevOps!

![500px-Devops.svg.png](img/500px-Devops.svg.png)

http://en.wikipedia.org/wiki/File:Devops.svg

!SLIDE

# DevOps

- portmanteau of *Development* and *Operations*.

- *agile of systems*

- values: **CAMS**

  - Culture
  - Automation
  - Metrics
  - Sharing

<!-- http://www.markhneedham.com/blog/2013/04/07/treating-servers-as-cattle-not-as-pets/ -->

- *treat servers as cattle, not pets*

- established practice

!SLIDE

# Version control

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
