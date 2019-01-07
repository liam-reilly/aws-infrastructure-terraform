variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "region" {
  description = "The AWS region"
  default     = "eu-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block range for VPC"
  default     = "10.100.0.0/16"
}

variable "public_cidr" {
  description = "CIDR blocks for public subnets"
  default     = [
    "10.100.0.0/24",
    "10.100.85.0/24",
    "10.100.170.0/24"
  ]
  type        = "list"
}

variable "private_cidr" {
  description = "CIDR blocks for private subnets"
  default     = [
    "10.101.0.0/24",
    "10.101.85.0/24",
    "10.101.170.0/24"
  ]
  type        = "list"
}

variable "azs" {
  description = "Availability Zones in eu-west-2"
  type        = "list"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}
