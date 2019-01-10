resource "aws_subnet" "private-subnet" {
  count             = 3
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${element(var.private_cidr_block, count.index)}"
  availability_zone = "${element(var.availability_zones, count.index)}"

  tags {
    Name = "private.${var.aws_region}.az${count.index + 1}"
    Tier = "private"
  }
}

output "private_subnet_ids" {
  value = "${aws_subnet.private-subnet.*.id}"
}
