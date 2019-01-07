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
    "10.0.0.0/32",
    "10.0.85.0/32",
    "10.0.170.0/32"
  ]
  type        = "list"
}

variable "private_cidr" {
  description = "CIDR blocks for private subnets"
  default     = [
    "10.1.0.0/24",
    "10.1.0.85/24",
    "10.1.0.170/24"
  ]
  type        = "list"
}

variable "azs" {
  description = "Availability Zones in eu-west-2"
  type        = "list"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}
