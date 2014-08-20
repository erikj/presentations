# Base-Box Requirements

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

# Base Boxes: Community

Base boxes built, configured and packaged by Vagrant community

<!-- TODO: add more examples? -->

- http://www.vagrantbox.es/
- https://vagrantcloud.com/
  - accessible in Vagrant via `user-name/box-name`
  - *e.g.* `hashicorp/precise32`, 32-bit Ubuntu Precise from Hashicorp

!SLIDE

# `catalog-vagrant`

https://github.com/ncareol/catalog-vagrant

- `git` repository
- configuration files
- documentation
- versioned
- nearly everything is configured via versioned shell scripts and Puppet manifests

!SLIDE

# Minimal SL6.5 Base Box

- maintainer creates minimal base box:
  - `sl65-minimal.vb.{DATESTAMP}.box`
- fresh install of SciLinux 6.5 + Vagrant requirements

!SLIDE

# `catalog-dev` Base Box

- maintainer provisions catalog-dev base box
  - `sl65-catalog-dev.vb.{DATESTAMP}.box`
  - based on `sl65-minimal.vb.{DATESTAMP}.box`
  - Vagrant calls shell script and Puppet manifest from `catalog-vagrant/Vagrantfile`:

```ruby
config.vm.provision "shell", path: "bin/provision.sh"

config.vm.provision "puppet" do |puppet|
  puppet.manifests_path = "puppet"
  puppet.manifest_file  = "default.pp"
end
```

!SLIDE

`Vagrantfile`

```ruby
config.vm.provision "shell", path: "bin/provision.sh"
```

`bin/provision.sh`

```bash
if [ "`rpm -qa puppet`" ]
  then echo 'puppet already installed'
  else # install puppet
    echo 'installing puppet'
    rpm -ivh https://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-10.noarch.rpm
    yum install -y puppet
fi

modules=('puppetlabs-mysql' 'maestrodev-rvm' 'puppetlabs-apache')
for module in "${modules[@]}"; do
  if [ "`puppet module list | grep $module`" ]
    then echo $module already installed
    else # install module
      echo install puppet module $module
      puppet module install $module
  fi
done
```

!SLIDE

`Vagrantfile`

```ruby
config.vm.provision "puppet" do |puppet|
  puppet.manifests_path = "puppet"
  puppet.manifest_file  = "default.pp"
end
```

`puppet/default.pp`

```puppet
import 'mysql.pp'
import 'rvm-ruby.pp'
import 'unicorn.pp'
import 'apache.pp'
```

!SLIDE

`puppet/mysql.pp`

```puppet
class { '::mysql::server':
  root_password    => 'xxxxxxxxx',
  override_options => { 'mysqld' => {
    'max_connections'   => '1024',
    'default-time-zone' => '+00:00'
  } }
}

mysql::db { 'catalog_dev':
  user     => 'vagrant',
  password => 'xxxxxx',
  host     => 'localhost',
  grant    => 'all',
  charset  => 'utf8',
  sql      => '/vagrant/sql/sferic.zith9.20140520.sql'
}
```

!NOTE
one example of the Puppet manifests...

!SLIDE

# Base-Box Documentation

- maintainer documents changes and md5
  - `sl65-catalog-dev.vb.{DATESTAMP}.box.md`
  - `sl65-catalog-dev.vb.{DATESTAMP}.box.md5`
- maintainer shares box and documentation via NFS
  - SL65 minimal: `/net/vagrant/shared`
  - SL65 catalog-dev: `/net/vagrant/ctm`
