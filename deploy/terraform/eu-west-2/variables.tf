variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "vpc_cidr" {
  default = "10.10.0.0/16"
}

variable "aws_region" {
  default = "eu-west-2"
}

variable "availability_zones" {
  description = "Availability Zones in eu-west-2"
  type        = "list"

  default = [
    "eu-west-2a",
    "eu-west-2b",
    "eu-west-2c",
  ]
}