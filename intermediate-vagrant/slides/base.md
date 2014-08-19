# Base Boxes

## Requirements

- VM that runs on target provider
- `vagrant` user w/ passwordless `sudo`
- SSH
- SSH keys
  - Vagrant default keys on GitHub
  - or use your own
    - private key must be configured in `Vagrantfile` and available on host
- provider guest additions installed
  - for better host-guest integration
- packaged via `vagrant package`

!SLIDE

# Base Boxes

## Community Built

Base boxes built, configured and packaged by Vagrant community

<!-- TODO: add more examples? -->

- http://www.vagrantbox.es/
- https://vagrantcloud.com/
  - accessible in Vagrant via `user-name/box-name`
  - *e.g.* `hashicorp/precise32`, 32-bit Ubuntu Precise from Hashicorp

!SLIDE

# Base Boxes

## CTM (Summary)

- `git` repo `catalog-vagrant`
  - versioned
  - nearly everything is configured via versioned shell scripts and Puppet manifests

!SLIDE

# Base Boxes

## CTM (Summary)

- maintainer creates minimal base box:
  - `sl65-minimal.vb.{DATESTAMP}.box`

!SLIDE

# Base Boxes

## CTM (Summary)

- maintainer provisions catalog-dev base box
  - based on `sl65-minimal.vb.{DATESTAMP}.box`
  - Vagrant calls shell script and puppet manifest from `catalog-vagrant/Vagrantfile`:

```ruby
config.vm.provision "shell", path: "bin/provision.sh"

config.vm.provision "puppet" do |puppet|
  puppet.manifests_path = "puppet"
  puppet.manifest_file  = "default.pp"
end
```

!SLIDE

# Base Boxes

## CTM (Summary)

  - shell script installs puppet and required modules
  - puppet manifests install catalog-dev requirements:
    - rvm + ruby
    - mysql
      - user
      - database
      - schema
      - base data
    - apache
    - unicorn (rails daemon)
  - minimizes and packages box

!SLIDE

# Base Boxes

## CTM (Summary)

- maintainer documents changes and md5
- maintainer shares box and documentation in
  - SL65 minimal: `/net/vagrant/shared`
  - SL65 catalog-dev: `/net/vagrant/ctm`
