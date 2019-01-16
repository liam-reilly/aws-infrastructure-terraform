variable "vpc_id" {}
variable "aws_region" {}
variable "availability_zones" {
  type = "list"
}
variable "public_subnet_ids" {
  type = "list"
}