resource "aws_instance" "instance" {
  ami                         = "${var.ami}"
  instance_type               = "${var.type}"
  vpc_security_group_ids      = ["${var.secGroups}"]
  subnet_id                   = "${var.subnetId}"
  key_name                    = "${var.sshKey}"
  associate_public_ip_address = "${var.public_ip}"

  tags {
    Name       = "${var.tagName}"
    Department = "${var.tagDepartment}"
    Stack      = "${var.tagStack}"
  }
}

output "id" {
  value = "${aws_instance.instance.id}"
}
output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = ["${aws_instance.instance.public_ip}"]
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = ["${aws_instance.instance.public_dns}"]
}

