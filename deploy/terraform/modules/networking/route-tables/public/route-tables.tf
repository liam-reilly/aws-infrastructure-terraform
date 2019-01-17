resource "aws_route_table" "public_route_table" {
  count  = "${length(var.availability_zones)}"
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${var.internet_gateway_id}"
  }

  tags {
    Name = "public-route-table.${var.aws_region}.az${count.index + 1}"
  }
}

resource "aws_route_table_association" "rt_association" {
  route_table_id = "${element(aws_route_table.public_route_table.*.id,count.index)}"
  count          = "${length(var.availability_zones)}"
  subnet_id      = "${element(var.public_subnet_ids,count.index)}"
}
