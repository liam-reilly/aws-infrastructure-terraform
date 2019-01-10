module "subnets-public" {
  source     = "subnets-public"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  public_cidr_block = [
    "${cidrsubnet(var.vpc_cidr_block, 4, 0)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 1)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 2)}",
  ]
}

module "subnets-private" {
  source     = "subnets-private"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  private_cidr_block = [
    "${cidrsubnet(var.vpc_cidr_block, 4, 3)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 4)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 5)}",
  ]
}

module "subnets-data" {
  source     = "subnets-data"
  aws_region = "${var.aws_region}"
  vpc_id     = "${module.vpc.vpc_id}"

  data_cidr_block = [
    "${cidrsubnet(var.vpc_cidr_block, 4, 6)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 7)}",
    "${cidrsubnet(var.vpc_cidr_block, 4, 8)}",
  ]
}

