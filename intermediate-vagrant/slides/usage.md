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
