package 'openvpn' do
  action :install
end

service 'openvpn' do
  action :start
end

package 'ruby' do
  action :install
end

gem_package 'serverspec' do
  action :install
end
