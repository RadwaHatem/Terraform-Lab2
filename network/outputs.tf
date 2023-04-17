output "vpc_id" {
  value=aws_vpc.first-vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.first-vpc.cidr_block
}

output "pub_sub_1" {
  value = aws_subnet.first-public-subnet.id
}

output "pub_sub_2" {
  value = aws_subnet.second-public-subnet.id
}

output "priv_sub_1" {
  
  value = aws_subnet.first-private-subnet.id

}

output "priv_sub_2" {

  value = aws_subnet.second-private-subnet.id
}

