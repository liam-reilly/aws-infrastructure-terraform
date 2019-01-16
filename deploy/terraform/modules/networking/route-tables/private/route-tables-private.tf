resource "aws_route_table" "private-route-table" {
  vpc_id = "${var.vpc_id}"
  count  = "${length(var.availability_zones)}"

  tags {
    Name = "private-route-table.${var.aws_region}.az${count.index + 1}"
  }
}

output "private_route_table_ids" {
  value = ["${aws_route_table.private-route-table.*.id}"]
}