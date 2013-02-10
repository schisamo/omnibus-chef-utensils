# Omnibus Chef Utensils

A self-contained, full-stack cookbook development toolchain for Chef!

The current version of the Chef Utensils toolchain is bundled with:

* Ruby 1.9.3
* [Chef 11](https://github.com/opscode/chef) (`knife` and `chef-shell` a Chef developers best friends)
* [Berkshelf](http://berkshelf.com/) (cookbook dependency management; it's like Bundler for your cookbooks)
* [Foodcritic](http://acrmp.github.com/foodcritic/) (A lint tool for your cookbooks.)
* [Test Kitchen 1.0](https://github.com/opscode/test-kitchen/tree/1.0) (née Jamie-CI; multi-platform
integration testing made easy)

Additionally the following Knife plugins are included:

* knife-ec2
* knife-openstack
* knife-rackspace

## Quick Start

Creating an Omnibus-powered Chef Utensils package is easy! Assuming you have a
sane Ruby development environment configured, run the following commands on the
platform you want to build a package for:

```
bundle install --binstubs
cp omnibus.rb.example omnibus.rb
sudo mkdir -p /opt/chef-utensils /var/cache/omnibus
sudo chown $USER:staff /opt/chef-utensils /var/cache/omnibus
bundle exec omnibus build chef-utensils
```

This repository also ships with a Vagrantfile which makes it easy to build
packages for most major Linux distributions. Simply uncomment out the
appropriate Vagrant box entry in the Vagrantfile and run:

```
bundle install --binstubs
bundle exec vagrant up
```

No matter the method you choose, once your build is complete you should have
a shiny new platform-specific package sitting at `$PWD/pkg`. Take that package
and share with your friends and co-workers. Ideally you would build these
packages in some sort of CI infrastructure and have build slaves for each
platform you want to support.

## Supported Platforms

Rough build vs install compatibility matrix for Linux distributions:

| Build Platform         | Compatible Install Platforms                    |
|:-----------------------|:------------------------------------------------|
| Ubuntu 10.04 64-bit    | Ubuntu 10.04, 10.10, 11.04, 11.10 64-bit        |
| Ubuntu 12.04 64-bit    | Ubuntu 12.04, 12.10 64-bit                      |
| CentOS 5 64-bit        | RHEL 5 derivatives (Fedora, Amazon, Scientific) |
| CentOS 6 64-bit        | RHEL 6 derivatives (Fedora, Amazon, Scientific) |
| Mac OS X 10.8.2 64-bit | Mac OS X 10.8.2 64-bit (Mountain Lion)          |

Additionally packages created on Ubuntu should install on Debain. The above
matrix is based on known compatibility from Chef Omnibus packages.

## TODO

* Windows MSI support
* Add support for installing to user home directory (ie ~/chef-utensils )
* Add support to prompt, download and install Vagrant full-stack installer
* Add support to prompt, download and install VirtualBox
* Help user setup initial knife.rb file
* Add acceptance tests to ensure all packaged utilities play nicely with each
other.

## License ##

|                      |                                          |
|:---------------------|:-----------------------------------------|
| **Author**           | Seth Chisamore (<schisamo@opscode.com>)  |
| **Copyright:**       | Copyright (c) Seth Chisamore             |
| **License:**         | Apache License, Version 2.0              |

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
