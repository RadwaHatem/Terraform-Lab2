resource "aws_security_group" "first-sg" {
  name        = "first-sg"
  description = "the first security group"
  vpc_id      = module.my-network.vpc_id

  ingress {

    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {

    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

resource "aws_security_group" "second-sg" {
  name        = "second-sg"
  description = "the second security group"
  vpc_id      = module.my-network.vpc_id

  ingress {
    description = "port 3000"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [var.VPC_CIDR]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.VPC_CIDR]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}


resource "aws_security_group" "rds_security_group" {
  name        = "rds_security_group"
  description = "Security group for RDS"
  vpc_id      = module.my-network.vpc_id
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [var.VPC_CIDR]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "elasticache-sg" {
    name = "elasticache-sg"
    description = "security group for elasticache redis"
    vpc_id      = module.my-network.vpc_id
    ingress {

      from_port = 6379
      to_port = 6379
      protocol = "tcp"
      cidr_blocks = [var.VPC_CIDR]
    } 
}

# bn7ot feeha bta3et el vpc bft7 range el ips bta3et el vpc fahma