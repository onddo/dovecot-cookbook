# Cookbook:: dovecot
# Author:: Xabier de Zuazo (<xabier@zuazo.org>)
# Copyright:: Copyright (c) 2016 Xabier de Zuazo
# Copyright:: Copyright (c) 2013-2015 Onddo Labs, SL.
# License:: Apache-2.0
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

name 'dovecot'
maintainer 'Xabier de Zuazo'
maintainer_email 'xabier@zuazo.org'
license 'Apache-2.0'
description <<-EOH
Installs and configures Dovecot, open source IMAP and POP3 email server.
EOH
version '3.3.1'

source_url "https://github.com/zuazo/#{name}-cookbook"
issues_url "https://github.com/zuazo/#{name}-cookbook/issues"

chef_version '>= 14'

supports 'amazon'
supports 'centos', '>= 7.9'
supports 'debian', '>= 10.13'
supports 'fedora', '>= 36.0'
supports 'opensuse', '>= 15.4'
supports 'oracle', '>= 7.4'
supports 'ubuntu', '>= 18.04'

# TODO: remove this as it will be deprecated in Chef 15
depends 'ohai'
# [2023-04-15T02:54:09+00:00] WARN: The Ohai plugin_path does not include /tmp/kitchen/ohai/plugins. Ohai will reload on each chef-client run in order to add this directory to the path unless you modify your client.rb configuration to add this directory to plugin_path. The plugin_path can be set via the chef-client::config recipe. See 'Ohai Settings' at https://docs.chef.io/config_rb_client.html#ohai-settings for more details.
# [2023-04-15T02:54:09+00:00] WARN: Adding /tmp/kitchen/ohai/plugins to the Ohai plugin path for this chef-client run only
