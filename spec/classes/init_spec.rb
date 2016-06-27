require 'spec_helper'
describe 'proxy_client' do
  context 'with default values for all parameters' do
    it { should contain_class('proxy_client') }
  end
end
