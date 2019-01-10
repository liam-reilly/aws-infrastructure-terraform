resource "aws_route_table" "private-route-table" {
  vpc_id = "${aws_vpc.private.id}"
  count  = "${length(var.azs)}"

  tags {
    Name = "private-route-table.${var.region}.az${count.index + 1}"
  }
}

output "private_route_table_ids" {
  value = ["${aws_route_table.private-route-table.*.id}"]
}
