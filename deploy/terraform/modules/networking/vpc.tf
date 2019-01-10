module "vpc" {
  source     = "virtual-private-cloud"
  vpc_name   = "vpc.private.${var.aws_region}"
  cidr_block = "${var.vpc_cidr_block}"
}
