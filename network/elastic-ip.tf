resource "aws_eip" "elastic-ip-1a" {
  vpc = true
  tags = {
    "Name" = "eip_1a"
  }
}

resource "aws_eip" "elastic-ip-1b" {
  vpc = true
  tags = {
    "Name" = "eip_1b"
  }
}