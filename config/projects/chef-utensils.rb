#
# Copyright:: Copyright (c) Seth Chisamore
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "chef-utensils"

replaces        "chef"
install_path    "/opt/chef-utensils"
build_version   Omnibus::BuildVersion.new.semver
build_iteration "1"

deps = []

# Hacky but allows us to set the embedded chef version that is installed.
# Once omnibus-ruby supports proper software definition version overrides
# (either externally or at the project level) this can go away.
ENV['CHEF_GIT_REV'] ||= "11.2.0"

deps << "preparation"
deps << "ruby"

# knife and chef-shell
deps << "chef"

# knife plugins
deps << "knife-ec2"
deps << "knife-openstack"
deps << "knife-rackspace"

# other useful tools
deps << "berkshelf"
deps << "foodcritic"
deps << "test-kitchen"

deps << "version-manifest"

dependencies deps

exclude "\.git*"
exclude "bundler\/git"
