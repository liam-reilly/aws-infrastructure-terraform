variable "vpc_id" {}
variable "aws_region" {}

variable "private_cidr_block" {
  type = "list"
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
