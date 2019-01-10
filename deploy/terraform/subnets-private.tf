resource "aws_subnet" "private-subnet" {
  count             = 3
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${element(var.private_cidr, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "private.${var.region}.az${count.index + 1}"
    Tier = "private"
  }
}

output "private_subnet_ids" {
  value = "${aws_subnet.private-subnet.*.id}"
}
