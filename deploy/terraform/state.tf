terraform {
  backend "s3" {
    bucket = "liam-reilly-terraform-state"
    key    = "infrastructure/terraform.tfstate"
    region = "eu-west-2"
  }
}