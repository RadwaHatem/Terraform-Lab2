resource "aws_route_table_association" "first-pv-ta" {
  subnet_id      = aws_subnet.first-private-subnet.id
  route_table_id = aws_route_table.firstpvRT.id
}

resource "aws_route_table_association" "second-pv-ta" {
  subnet_id      = aws_subnet.second-private-subnet.id
  route_table_id = aws_route_table.firstpvRT.id
}

# # route tables associations for public subnets

resource "aws_route_table_association" "first-pub-ta" {
  subnet_id      = aws_subnet.first-public-subnet.id
  route_table_id = aws_route_table.first-pub-rt.id
}

resource "aws_route_table_association" "second-pub-ta" {
  subnet_id      = aws_subnet.second-public-subnet.id
  route_table_id = aws_route_table.first-pub-rt.id
}





