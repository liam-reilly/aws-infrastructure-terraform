resource "aws_vpc" "private" {
  cidr_block = "${var.vpc_cidr}"

  tags {
    Name = "vpc.private.${var.region}"
  }
}
