variable "vpc_id" {}
variable "vpc_cidr_block" {}
variable "aws_region" {}
variable "internet_gateway_id" {}
variable "availability_zones" {
  type = "list"
}
variable "public_subnet_ids" {}