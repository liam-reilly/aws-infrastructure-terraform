module "route-tables-private" {
  source              = "route-tables/private/"
  aws_region          = "${var.aws_region}"
  availability_zones  = "${var.availability_zones}"
  vpc_id              = "${module.vpc.vpc_id}"
  vpc_cidr_block      = "${module.vpc.vpc_cidr_block}"
}
