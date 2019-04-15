resource "aws_vpc" "main" {
  cidr_block           = "${var.cidr}"
  enable_dns_hostnames = "${var.dns_hostnames}"
  enable_dns_support   = "${var.dns_support}"

  tags {
    Name       = "${var.tagName}"
    Department = "${var.tagDepartment}"
    Stack      = "${var.tagStack}"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
}
resource "aws_default_route_table" "r" {
  default_route_table_id = "${aws_vpc.main.default_route_table_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}
output "id" {
  value = "${aws_vpc.main.id}"
}
