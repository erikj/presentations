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

!SLIDE

# Base Boxes

## Community Built

Base boxes built, configured and packaged by Vagrant community

<!-- TODO: add more examples? -->

- http://www.vagrantbox.es/
- https://vagrantcloud.com/
  - accessible in Vagrant via `user-name/box-name`
  - *e.g.* `hashicorp/precise32`, 32-bit Ubuntu Precise from Hashicorp
