# Summary

- Vagrant Concepts
- Building Base Boxes
- Workflow: General and CTM-specific
- Demo

!SLIDE

# Lessons Learned

- NFS-shared directories are faster than VirtualBox's
- Dependencies and configuration nuances of deploying our applications to a fresh Linux system totally exposed
  - benefit: we are much more prepared for new system deployments of Field-Catalog and Catalog Maps applications
  - addressed (and documented) via shell scripts and Puppet manifests
- Small learning curve for users, but important to educate on Vagrant concept and workflow
- Incredibly easy to use
- Developer onboarding / setting up new development environments is now trivial

!SLIDE

# Caveats

- VirtualBox APIs required by Vagrant can break on Mavericks
- new way of doing things requires educating users (developers)

!SLIDE

# Future / wishlist

- Automated base-box construction: packager.io + kickstarter files
  - *automate all the things*
- Generalize `catalog-vagrant` for use by any EOL team
- More maintainers, more users, more boxes
- Look into `s/puppet/salt/g` or `s/puppet/ansible/g`
  - **YAML** config files rather than Puppet-specific language
- CentOS?
  - if / when EOL transitions
  - prep and QA our software on "new" OS
- More up-to-date data on `catalog-dev` box

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

# Room For Improvement

- NFS lag
- automation of base-box creation

!SLIDE

# `</content>`

- thanks!
- `ej@ucar.edu`
- http://erikj.github.io/intermediate-vagrant
