variable "aws_region" {}
variable "vpc_id" {}
variable "vpc_cidr_block" {}
variable "availability_zones" {
  type = "list"
}
variable "public_subnet_ids" {
  type = "list"
}
variable "internet_gateway_id" {}