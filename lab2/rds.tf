resource "aws_db_instance" "my_rds_instance" {
    
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name                 = "mysql_rds_instance"
  username             = var.db_username
  password             = var.db_password
  
  skip_final_snapshot = true
  vpc_security_group_ids = [

    aws_security_group.rds_security_group.id
  ]

  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name

}

resource "aws_db_subnet_group" "my_db_subnet_group" {

  name        = "my-db-subnet-group"
  description = "My database subnet group"
  
  subnet_ids = [module.my-network.priv_sub_1,module.my-network.priv_sub_2]

}
