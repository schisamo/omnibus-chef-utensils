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

name "foodcritic"
version "1.7.0"

dependencies ["ruby", "rubygems", "nokogiri"]

env = { "GEM_HOME" => nil, "GEM_PATH" => nil }

build do
  gem "install #{name} -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}",
    :env => env
end