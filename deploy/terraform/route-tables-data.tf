//resource "aws_route_table" "data-route-table" {
//  vpc_id = "${aws_vpc.private.id}"
//  count  = "${length(var.azs)}"
//
//  tags {
//    Name = "data-route-table.${var.region}.az${count.index + 1}"
//  }
//}
//
//output "data_route_table_ids" {
//  value = ["${aws_route_table.data-route-table.*.id}"]
//}
