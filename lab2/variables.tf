variable "VPC_CIDR" {
  type = string
}

variable "COMPANY_NAME" {
  type = string
}

variable "PUBLIC_SUBNET_1_CIDIR" {
  type = string
}

variable "PUBLIC_SUBNET_2_CIDIR" {
  type = string
}

variable "PRIVATE_SUBNET_2_CIDIR" {
  type = string
}

variable "PRIVATE_SUBNET_1_CIDIR" {
  type = string
}

variable "AZ_1" {
  type = string
}


variable "AZ_2" {
  type = string
}

variable "REGION" {
  type = string
}

variable "AMI_ID" {
  type = string
}

variable "INSTANCE_TYPE" {
    type = string
}

variable "db_username" {}

variable "db_password" {
  type = string
  sensitive = true
}