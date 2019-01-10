//resource "aws_route_table" "public-route-table" {
//  vpc_id = "${aws_vpc.private.id}"
//
//  tags {
//    Name = "public-route-table.${var.region}"
//  }
//}
//
//resource "aws_route" "default" {
//  route_table_id         = "${aws_route_table.public-route-table.id}"
//  destination_cidr_block = "0.0.0.0/0"
//  gateway_id             = "${aws_internet_gateway.internet-gateway.id}"
//}
//
//resource "aws_route_table_association" "public-rtb" {
//  count          = "${length(var.azs)}"
//  subnet_id      = "${element(aws_subnet.public-subnet.*.id, count.index)}"
//  route_table_id = "${aws_route_table.public-route-table.id}"
//}
//
//output "public_route_table_ids" {
//  value = ["${aws_route_table.public-route-table.*.id}"]
//}