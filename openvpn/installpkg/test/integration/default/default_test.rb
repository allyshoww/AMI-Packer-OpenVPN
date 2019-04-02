describe package('openvpn'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('openvpn'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

