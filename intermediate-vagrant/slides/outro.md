# Summary

- Vagrant Concepts
- Base-Box Construction
- Workflow: General and CTM-specific
- Demo

!SLIDE

# Lessons Learned

- Incredibly easy to use, works as advertised
- Developer onboarding / setting up new development environments is now trivial
- Small learning curve for users, but important to educate on Vagrant concept and workflow
- Initially setting up base box(es) can be a bit laborious, but it pays
off when using and developing w/ Vagrant

!SLIDE

# Lessons Learned

- Dependencies and configuration nuances of deploying our applications to a
fresh Linux system totally exposed
  - benefit: we are much more prepared for new system deployments of Field-Catalog and Catalog Maps applications
  - addressed (and documented) via shell scripts and Puppet manifests

!SLIDE

# Caveats

- VirtualBox APIs required by Vagrant can break on Mavericks
- New way of doing things requires educating users (developers)
- Maintainer(s) must be able to install and configure project dependencies from fresh install of target system

!SLIDE

# Future / Wishlist

- Automated base-box construction: packager.io + kickstarter files

  - <img alt='automate all the things' src='img/automate-all-the-things.jpg' height=150 width=200 />

- Support for more Catalog applications
- More up-to-date data on `catalog-dev` box
- CentOS?
  - if / when EOL transitions
  - prep and QA our software on "new" OS

!SLIDE

# Future / Wishlist

- Generalize `catalog-vagrant` for use by any EOL team
- More maintainers, more users, more boxes
- Look into `s/puppet/salt/g` or `s/puppet/ansible/g`
  - **YAML** config files rather than Puppet-specific language
- Use Puppet / other CM tool for managing servers

!SLIDE

# Other Features

- GUI / Desktop support in Vagrant boxes

  ```ruby
  config.vm.provider "virtualbox" do |v|
    v.gui = true
  end
```

  - https://docs.vagrantup.com/v2/virtualbox/configuration.html
- Windows now officially supported
  - https://www.vagrantup.com/blog/feature-preview-vagrant-1-6-windows.html
- Other providers
  - VMWare-plugin license: $79 / person
  - AWS
  - Docker
  - M$ Hyper-V

!NOTE
Features in which others may be interested

!SLIDE

# `</content>`

- thanks!
- `ej@ucar.edu`
- http://erikj.github.io/intermediate-vagrant
