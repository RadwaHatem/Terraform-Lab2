resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.first-vpc.id

  tags = {
    Name = "${var.name}_igw"
  }
}
