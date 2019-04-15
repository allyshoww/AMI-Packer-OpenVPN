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
You can ignore the warning about kitchen.yaml selecting the "N" option.

4-) Run sudo kitchen verify. 

This command test your codes without login in the vagrant box, only via SSH. THe correct output is:

(<a href="http://tinypic.com?ref=209kd43" target="_blank"><img src="http://i67.tinypic.com/209kd43.png" border="0" alt="Image and video hosting by TinyPic"></a>

For destroy this environment:
sudo kitchen destroy

# TERRAFORM-PACKER-CHEF

The objective of this repo is to deploy an Amazon AMI with OpenVPN installed. This package is installed with Chef and AMI is build with Packer. 

### Prerequisites

```
1-) Packer - https://www.packer.io
2-) Terraform - https://www.terraform.io
3-) A AWS Access Keys and Secret Keys credentials (For this repo, you can use an IAM account with full admin access)
```

### TO-DO

In the first moment, you have to configure your local machine to access a AWS account through the access keys/secret keys. You can input your keys in this command:

```
aws configure
```
After this, clone this repo:
```
git clone https://github.com/allysono/chef-kitchen-serverspec.git
```

Go to folder Packer and build the image through the command:
```
sudo packer build Image.Base.json
```
When the command is finished, save the AMI code with the image built with OpenVPN in Packer. Now, you need to insert your AWS Secret Key and Access key in terraform.tfvars file. Save the image output (ami-xxx)

Now, build an Amazon infrastructure with Terraform. Go to Terraform folder on cloned repo. Edit variables.tf and insert on AMI field the ami code (ami-xxx) saved on the last step and type
```
terraform init
```

After this, you plan the infrastructure deploy:

```
terraform plan -out="deploy.out"
```
In the end, apply this what was planned in the past step:
```
terraform apply deploy.out
```

To destroy this environment, run this command:
```
terraform destroy
```

