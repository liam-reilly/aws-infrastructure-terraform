module "subnets-public" {
  source     = "subnets-public"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  public_cidr_block = [
    "${cidrblock(var.vpc_cidr_block, 4, 0)}",
    "${cidrblock(var.vpc_cidr_block, 4, 4)}",
    "${cidrblock(var.vpc_cidr_block, 4, 8)}",
  ]
}
