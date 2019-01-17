resource "aws_route_table" "data_route_table" {
  count  = "${length(var.availability_zones)}"
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${element(var.nat_gateway_ids,count.index)}"
  }

  tags {
    Name = "data-route-table.${var.aws_region}.az${count.index + 1}"
  }
}

resource "aws_route_table_association" "rt_association" {
  route_table_id = "${element(aws_route_table.data_route_table.*.id,count.index)}"
  count          = "${length(var.availability_zones)}"
  subnet_id      = "${element(var.data_subnet_ids,count.index)}"
}
