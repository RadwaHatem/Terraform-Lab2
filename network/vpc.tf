resource "aws_vpc" "first-vpc" {
  cidr_block = var.cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.name}_vpc"
  }
}
