module "internet-gateway" {
  source     = "internet-gateway"
  vpc_id     = "${module.vpc.vpc_id}"
  aws_region = "${var.aws_region}"
}
