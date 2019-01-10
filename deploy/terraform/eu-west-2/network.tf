module "eu-west-2" {
  source         = "../modules/networking"
  vpc_cidr_block = "${var.vpc_cidr}"
  aws_region     = "${var.aws_region}"
}
