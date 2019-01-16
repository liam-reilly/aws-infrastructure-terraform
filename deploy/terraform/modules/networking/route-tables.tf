module "route-tables-public" {
  source              = "route-tables/public/"
  aws_region          = "${var.aws_region}"
  availability_zones  = "${var.availability_zones}"
  vpc_id              = "${module.vpc.vpc_id}"
  vpc_cidr_block      = "${module.vpc.vpc_cidr_block}"
  internet_gateway_id = "${module.internet-gateway.internet_gateway_id}"
  public_subnet_ids   = "${module.subnets-public.public_subnet_ids}"
}
