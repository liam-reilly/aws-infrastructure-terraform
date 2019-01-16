resource "aws_route_table" "public-route-table" {
  vpc_id = "${var.vpc_id}}"

  tags {
    Name = "public-route-table.${var.aws_region}"
  }
}

resource "aws_route" "default" {
  route_table_id         = "${aws_route_table.public-route-table.id}"
  destination_cidr_block = "${var.vpc_cidr_block}"
  gateway_id             = "${var.internet_gateway_id}"
}

resource "aws_route_table_association" "public-rtb" {
  count          = "${length(var.availability_zones)}"
  subnet_id      = "${element(var.public_subnet_ids, count.index)}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}

output "public_route_table_ids" {
  value = ["${aws_route_table.public-route-table.*.id}"]
}
