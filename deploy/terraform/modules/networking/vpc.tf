module "vpc" {
  source     = "virtual-private-cloud"
  vpc_name   = "vpc.private.${var.aws_region}"
  cidr_block = "${var.vpc_cidr_block}"
}

output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr_block" {
  value = "${module.vpc.vpc_cidr_block}"
}

output "subnets_public" {
  value = "${module.subnets-public.public_subnet_ids}"
}

data "aws_nat_gateway" "nat" {
  subnet_id = "${element(module.subnets-public.public_subnet_ids, 0)}"
}
