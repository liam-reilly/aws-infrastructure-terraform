resource "aws_subnet" "data-subnet" {
  count             = 3
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${element(var.data_cidr_block, count.index)}"
  availability_zone = "${element(var.availability_zones, count.index)}"

  tags {
    Name = "data.${var.aws_region}.az${count.index + 1}"
    Tier = "data"
  }
}

output "data_subnet_ids" {
  value = "${aws_subnet.data-subnet.*.id}"
}
