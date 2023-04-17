resource "aws_instance" "public-instance-1" {
  ami = var.AMI_ID

  instance_type = var.INSTANCE_TYPE

  tags = {
    
    Name = "public-instance-1"
  }

  subnet_id = module.my-network.pub_sub_1

  associate_public_ip_address          = true
  # user_data_replace_on_change = false
  key_name = aws_key_pair.terraformkey.id

  provisioner "local-exec" {

    command = "echo ${self.public_ip} >> inventory"
  }

  vpc_security_group_ids = [aws_security_group.first-sg.id]
  user_data = <<EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt-get install mysql-server -y
                sudo apt install -y apache2
                systemctl start apache2
                systemctl enable apache2
                echo "<h1> Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
                EOF
}




resource "aws_instance" "public-instance-2" {

  ami = var.AMI_ID

  instance_type = var.INSTANCE_TYPE

  tags = {

    Name = "public-instance-2"
  }

  key_name =  aws_key_pair.terraformkey.id
  associate_public_ip_address          = true

  provisioner "local-exec" {

      command = "echo ${self.public_ip} >> inventory"
  }

  subnet_id = module.my-network.pub_sub_2

  vpc_security_group_ids = [aws_security_group.first-sg.id]

  user_data = <<EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install mysql-server -y
    yum install -y apache2
    systemctl start apache2
    systemctl enable apache2
    echo "<h1> Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
  EOF

}





resource "aws_instance" "private-instance-1" {
  ami = var.AMI_ID

  instance_type = var.INSTANCE_TYPE

  tags = {

    Name = "private-instance-1"
  }

  subnet_id = module.my-network.priv_sub_1

  vpc_security_group_ids = [aws_security_group.second-sg.id]

  key_name = aws_key_pair.terraformkey.id

}





resource "aws_instance" "private-instance-2" {

  ami = var.AMI_ID

  instance_type = var.INSTANCE_TYPE

  tags = {

    Name = "private-instance-2"
  }

  subnet_id = module.my-network.priv_sub_2

  vpc_security_group_ids = [aws_security_group.second-sg.id]

  key_name = aws_key_pair.terraformkey.id


}