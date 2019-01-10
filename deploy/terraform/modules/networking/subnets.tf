module "subnets-public" {
  source     = "subnets-public"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  public_cidr_block = [
    "${cidrsubnet(var.vpc_cidr_block, 4, 0)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 4)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 8)}",
  ]
}
