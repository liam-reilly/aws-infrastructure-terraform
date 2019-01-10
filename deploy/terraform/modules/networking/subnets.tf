module "subnets-public" {
  source     = "subnets-public"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  public_cidr_block = [
    "${cidrsubnet(var.vpc_cidr_block, 6, 0)}",
    "${cidrsubnet(var.vpc_cidr_block, 6, 2)}",
    "${cidrsubnet(var.vpc_cidr_block, 6, 4)}",
  ]
}

module "subnets-private" {
  source     = "subnets-private"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  private_cidr_block = [
    "${cidrsubnet(var.vpc_cidr_block, 6, 6)}",
    "${cidrsubnet(var.vpc_cidr_block, 6, 8)}",
    "${cidrsubnet(var.vpc_cidr_block, 6, 10)}",
  ]
}

module "subnets-data" {
  source     = "subnets-data"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  data_cidr_block = [
    "${cidrsubnet(var.vpc_cidr_block, 6, 12)}",
    "${cidrsubnet(var.vpc_cidr_block, 6, 14)}",
    "${cidrsubnet(var.vpc_cidr_block, 6, 16)}",
  ]
}

