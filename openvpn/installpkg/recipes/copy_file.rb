cookbook_file "Copy a file" do  
  group "root"
  mode "0755"
  owner "ec2-user"
  path "/home/allyson/chef-cookbook/openvpn/installpkg/recipes/openvpn-spec.rb"
  source "openvpn-spec.rb"  
end
