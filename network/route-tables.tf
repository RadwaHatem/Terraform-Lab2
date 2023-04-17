resource "aws_route_table" "firstpvRT" {
  vpc_id = aws_vpc.first-vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw-faz.id
  }

}


# # route tables for public subnets 3la mostawa elsubnet

resource "aws_route_table" "first-pub-rt" {
  vpc_id = aws_vpc.first-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
