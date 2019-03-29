# chef-kitchen-serverspec

The objective of this script is to test the openvpn installed by CHEF with the tools serverspec and kitchen.

Through the chef cookbook, we will install openvpn client and verify with the serverspec and kitchen if this service is up and running. 

### Prerequisites

This is the software list you need to realize this cookbook:

```
1-) VirtualBox: www.virtualbox.org
2-) Vagrant : www.vagrantup.com
3-) Kitchen: https://kitchen.ci/
4-) ChefDK: https://downloads.chef.io/chefdk
5-) A SSH Client
```

### Using this cookbook

1-) Clone this repo for your local machine
```
git clone https://github.com/allysono/chef-kitchen-serverspec.git
```
2-) Go to folder called "openvpn" and after "installpkg"

3-) Initialize kitchen with:
```
sudo kitchen init
```
You can ignore the warning about kitchen.yaml

4-) Converge for kitchen with command:
```
sudo kitchen converge
```
5-) Login in kitchen vagrant box with command:
```
sudo kitchen login
```
6-) Verify if openvpn is running with the commnand
```
service openvpn status
```

If everything correct, the result must be like this:
![kitchen up and running](https://i.postimg.cc/QxsN3BBQ/kitchen.png)

In this moment, the test with kitchen was sucessfully completed.

Now, we are validate with serverspec-init. 

1-) In kitchen vagrant box on folder /tmp/kitchen/cookbooks/installpkg/recipes, run this command:
```
serverspec-init
```
and choose the option 1 (Un*x) and 2 (Exec - Local)

2-) Run this command:
```
rspec /tmp/kitchen/cookbooks/installpkg/recipes/openvpn_spec.rb
```

If everything is correct, you receive a message informing that there were no failures.

For destroy this environment:
sudo kitchen destroy
