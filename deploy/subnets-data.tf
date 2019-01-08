resource "aws_subnet" "data-subnet" {
  count             = 3
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${element(var.data_cidr, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "data.${var.region}.az${count.index + 1}"
    Tier = "data"
  }
}

output "data_subnet_ids" {
  value = "${aws_subnet.data-subnet.*.id}"
}