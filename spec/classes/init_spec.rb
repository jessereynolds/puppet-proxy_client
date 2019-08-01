require 'spec_helper'
describe 'proxy_client' do
  on_supported_os.each do |os, os_facts|

    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with default values for all parameters' do
        it { is_expected.to contain_class('proxy_client') }
      end

    end

  end
end

