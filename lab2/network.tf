module "my-network" {
    
  source = "../network"
  cidr = var.VPC_CIDR
  name = var.COMPANY_NAME
  public_1_cidr = var.PUBLIC_SUBNET_1_CIDIR
  public_2_cidr = var.PUBLIC_SUBNET_2_CIDIR
  private_1_cidr = var.PRIVATE_SUBNET_1_CIDIR
  private_2_cidr = var.PRIVATE_SUBNET_2_CIDIR
  azo-1 = var.AZ_1
  azo-2 = var.AZ_2
 

}

