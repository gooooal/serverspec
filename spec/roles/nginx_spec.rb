#require 'dockerspec/serverspec'
require 'spec_helper'


describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
#  it { should be_running }
end

#describe port(8080) do
#  it { should be_listening }
#end

describe 'nginx' do
  describe file('/usr/share/nginx/html/index.html') do
    it { should exist }
  end
end
