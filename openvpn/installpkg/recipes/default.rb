package 'openvpn' do
  action :install
end

service 'openvpn' do
  action :start
end

