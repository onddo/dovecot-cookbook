# Author:: Xabier de Zuazo (<xabier@zuazo.org>)
# Copyright:: Copyright (c) 2014 Onddo Labs, SL.
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

require_relative '../spec_helper'

describe 'dovecot::service', order: :random do
  let(:chef_runner) { ChefSpec::SoloRunner.new }
  let(:chef_run) { chef_runner.converge(described_recipe) }
  let(:node) { chef_runner.node }

  it 'enables dovecot service' do
    expect(chef_run).to enable_service('dovecot')
  end

  it 'starts dovecot service' do
    expect(chef_run).to start_service('dovecot')
  end

  describe 'the dovecot service' do
    let(:service) { 'dovecot' }

    it 'uses the default provider' do
      expect(chef_run).to enable_service(service).with(
        provider: nil
      )
    end

    it 'supports restart, reload and status' do
      expect(chef_run).to enable_service(service).with(
        supports: Mash.new(restart: true, reload: true, status: true)
      )
    end

    context 'on Ubuntu 18.04' do
      let(:chef_runner) do
        ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '18.04')
      end

      it 'uses the Upstart provider' do
        expect(chef_run).to enable_service(service).with(
          provider: nil
        )
      end

      it 'supports reload' do
        expect(chef_run).to enable_service(service).with(
          supports: Mash.new(restart: true, reload: true, status: true)
        )
      end
    end

    context 'on Ubuntu 20.04' do
      let(:chef_runner) do
        ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04')
      end

      it 'uses the default provider' do
        expect(chef_run).to enable_service(service).with(
          provider: nil
        )
      end

      it 'supports reload' do
        expect(chef_run).to enable_service(service).with(
          supports: Mash.new(restart: true, reload: true, status: true)
        )
      end
    end

    context 'on Debian 10' do
      let(:chef_runner) do
        ChefSpec::SoloRunner.new(platform: 'debian', version: '10')
      end

      it 'uses the Debian provider' do
        expect(chef_run).to enable_service(service).with(
          provider: nil
        )
      end

      it 'supports reload' do
        expect(chef_run).to enable_service(service).with(
          supports: Mash.new(restart: true, reload: true, status: true)
        )
      end
    end

    context 'on Debian 11' do
      let(:chef_runner) do
        ChefSpec::SoloRunner.new(platform: 'debian', version: '11')
      end

      it 'uses the default provider' do
        expect(chef_run).to enable_service(service).with(
          provider: nil
        )
      end

      it 'supports reload' do
        expect(chef_run).to enable_service(service).with(
          supports: Mash.new(restart: true, reload: true, status: true)
        )
      end
    end

    context 'on Fedora 32' do
      let(:chef_runner) do
        ChefSpec::SoloRunner.new(platform: 'fedora', version: '32')
      end

      it 'uses the default provider' do
        expect(chef_run).to enable_service(service).with(
          provider: nil
        )
      end

      it 'supports reload' do
        expect(chef_run).to enable_service(service).with(
          supports: Mash.new(restart: true, reload: true, status: true)
        )
      end
    end

    context 'on openSUSE 15' do
      let(:chef_runner) do
        ChefSpec::SoloRunner.new(platform: 'opensuse', version: '15.2')
      end

      it 'uses the default provider' do
        expect(chef_run).to enable_service(service).with(
          provider: nil
        )
      end

      it 'supports reload' do
        expect(chef_run).to enable_service(service).with(
          supports: Mash.new(restart: true, reload: false, status: true)
        )
      end
    end

    context 'on oracle 7' do
      let(:chef_runner) do
        ChefSpec::SoloRunner.new(platform: 'oracle', version: '7.6')
      end

      it 'uses the default provider' do
        expect(chef_run).to enable_service(service).with(
          provider: nil
        )
      end

      it 'supports reload' do
        expect(chef_run).to enable_service(service).with(
          supports: Mash.new(restart: true, reload: true, status: true)
        )
      end
    end
  end
end
