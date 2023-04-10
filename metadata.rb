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
version '3.3.0' # WiP

source_url 'https://github.com/zuazo/#{name}-cookbook'
issues_url 'https://github.com/zuazo/#{name}-cookbook/issues'

chef_version '>= 12'

supports 'amazon'
supports 'centos', '>= 6.7'
supports 'debian', '>= 7.11'
supports 'fedora', '>= 26.0'
supports 'opensuse', '>= 42.0'
supports 'oracle', '>= 6.9'
supports 'ubuntu', '>= 14.04'

# TODO: remove this as it will be deprecated in Chef 15
depends 'ohai'
