variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "region" {
  description = "The AWS region"
  default     = "eu-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block range for VPC"
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability Zones in eu-west-2"
  type        = "list"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}
