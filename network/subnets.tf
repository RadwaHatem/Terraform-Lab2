resource "aws_subnet" "first-public-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = var.azo-1
  cidr_block        = var.public_1_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "second-public-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = var.azo-2
  cidr_block        = var.public_2_cidr

  tags = {
    Name = "public-2"
  }
}

resource "aws_subnet" "first-private-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = var.azo-1
  cidr_block        = var.private_1_cidr
  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "second-private-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = var.azo-2
  cidr_block        = var.private_2_cidr
  tags = {
    Name = "private-2"
  }
}


