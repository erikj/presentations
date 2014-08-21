# Intermediate Vagrant

### CTM's Experience Using Vagrant For Field-Catalog Development

#### Erik Johnson, NCAR EOL

#### NCAR EOL Prog Seminar

#### August 21, 2014

!NOTE
Many of you were @ the CDS Strategic Meeting in April when I provided and
introducetion to Vagrant , and CTM has been trying out Vagrant in our Field-
Catalog-development workflow since then. So, aside from some basics, I'll try
not to repeat too much of what I covered back in April and will share what we
have learned and our experience since then.

!SLIDE

# Vagrant

- multitool for portable virtual machines (VMs)
  - create
  - manage
  - access
  - share

!NOTE
What is Vagrant?

!SLIDE

# Why Vagrant?

> Vagrant provides easy to configure, reproducible, and portable work environments built
> on top of industry-standard technology and controlled by a single consistent workflow to
> help maximize the productivity and flexibility of you and your team.

http://docs.vagrantup.com/v2/why-vagrant/index.html

!SLIDE

# Why Vagrant?

Vagrant handles VMs':

- user
- networking
  - IP address and domain name
  - SSH access
  - port forwarning
- directory sharing

!SLIDE

# Vagrant @ CTM

- 4 months
- 1 maintainer
- 3 users
- 2 applications
  - **Field Catalog**
  - **Catalog Maps**

!NOTE
Mike Dye contributed to Field-Catalog development this spring and didn't have to
install all of the database and Ruby dependencies that traditionally go along w/
that-- he just installed VirtualBox, installed Vagrant, cloned our git
repository and started developing, which is The Way It Should Be.
