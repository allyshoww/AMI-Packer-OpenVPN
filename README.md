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

4-) Run sudo kitchen verify. 

This command test your codes without login in the vagrant box, only via SSH. THe correct output is:

<a href="http://tinypic.com?ref=209kd43" target="_blank"><img src="http://i67.tinypic.com/209kd43.png" border="0" alt="Image and video hosting by TinyPic"></a>

For destroy this environment:
sudo kitchen destroy
