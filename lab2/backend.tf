terraform {
  backend "s3" {
    bucket         = "radwa-bucket"
    dynamodb_table = "terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}