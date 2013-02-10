name             "omnibus"
maintainer       "Seth Chisamore"
maintainer_email "schisamo@opscode.com"
license          "Apache 2.0"
description      "Installs/Configures omnibus build nodes."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends "apt", "~> 1.8.4"
depends "build-essential", "~> 1.3.4"
depends "git", "~> 2.1.4"
depends "rbenv", "~> 1.4.1"
depends "sudo", "~> 2.0.4"
depends "yum", "~> 2.1.0"
