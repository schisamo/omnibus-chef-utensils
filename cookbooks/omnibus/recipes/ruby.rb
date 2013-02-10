#
# Cookbook Name:: omnibus
# Recipe:: ruby
#
# Copyright:: Copyright (c) 2013 Opscode, Inc.
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

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "1.9.3-p194" do
  global true
end

rbenv_gem "bundler" do
  ruby_version "1.9.3-p194"
end

# link rbenv's shims for the ruby toolchain into a known path
%w{ bundle erb gem irb rake rdoc ri ruby testrb }.each do |shim|
  user_local_path = "/usr/local/bin/#{shim}"
  link user_local_path do
    to ::File.join(node['rbenv']['install_prefix'], "rbenv", "shims", shim)
  end
end
