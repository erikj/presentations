# Vagrant Usage

!SLIDE

# Vagrant Dependencies

- install VirtualBox
  - https://www.virtualbox.org/wiki/Downloads
- install Vagrant
  - http://www.vagrantup.com/downloads.html

!SLIDE

# `vagrant init`

- add `Vagrantfile` to repository
  - create file in text editor or via `$ vagrant init`
  - specify Vagrant box and other config, as needed

!SLIDE

# `vagrant up`

- `$ vagrant up`
  - loads base box, if needed
  - creates box, if needed
  - boots box
  - configures networking
  - mounts current directory as `/vagrant` on VM

!NOTE
general

!SLIDE

### `catalog-dev`: `vagrant init`

- install Catalog dependencies on first boot of new box:

```bash
host $ vagrant up
host $ vagrant ssh
guest $ cd /vagrant && bundle && sudo service unicorn start
```

!NOTE
CTM catalog-dev specific

!SLIDE

# CTM Workflow

1. `host $ cd catalog-maps/`
1. `host $ vagrant up`
1. edit files in preferred text editor / IDE on host
1. evaluate changes over HTTP via port forwarded to guest VM running application code from shared directory
  - http://localhost:3000
1. iterate upon edit and evaluation as needed
1. commit changes via `git` on host
  - `host $ git add changed/file.rb`
  - `host $ git commit -m "made some changes" `

!NOTE
cd to project directory, start Vagrant box, make changes, evaluate changes, iterate, commit changes to version-control system

!SLIDE

# Demo
