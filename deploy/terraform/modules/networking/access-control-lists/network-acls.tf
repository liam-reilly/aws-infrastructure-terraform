//resource "aws_network_acl" "dmz" {
//  vpc_id = "${aws_vpc.private.id}"
//
//  subnet_ids = [
//    "${element(aws_subnet.public-subnet.*.id, 0)}",
//    "${element(aws_subnet.public-subnet.*.id, 1)}",
//    "${element(aws_subnet.public-subnet.*.id, 2)}",
//  ]
//
//  tags {
//    Name = "dmz"
//  }
//}
//
//resource "aws_network_acl_rule" "public-traffic-ingress" {
//  network_acl_id = "${aws_network_acl.dmz.id}"
//  protocol       = "-1"
//  rule_action    = "allow"
//  rule_number    = 101
//  from_port      = 0
//  to_port        = 0
//  cidr_block     = "0.0.0.0/0"
//  egress         = false
//}
//
//resource "aws_network_acl_rule" "public-traffic-egress" {
//  network_acl_id = "${aws_network_acl.dmz.id}"
//  protocol       = "-1"
//  rule_action    = "allow"
//  rule_number    = 102
//  from_port      = 0
//  to_port        = 0
//  cidr_block     = "0.0.0.0/0"
//  egress         = true
//}
//
//resource "aws_network_acl" "internal" {
//  vpc_id = "${aws_vpc.private.id}"
//
//  subnet_ids = [
//    "${element(aws_subnet.private-subnet.*.id, 0)}",
//    "${element(aws_subnet.private-subnet.*.id, 1)}",
//    "${element(aws_subnet.private-subnet.*.id, 2)}",
//    "${element(aws_subnet.data-subnet.*.id, 0)}",
//    "${element(aws_subnet.data-subnet.*.id, 1)}",
//    "${element(aws_subnet.data-subnet.*.id, 2)}",
//  ]
//
//  tags {
//    Name = "internal"
//  }
//}
//
//resource "aws_network_acl_rule" "internal-traffic-from-public-ingress" {
//  count          = "${length(var.public_cidr)}"
//  network_acl_id = "${aws_network_acl.internal.id}"
//  protocol       = "-1"
//  rule_action    = "allow"
//  rule_number    = "${100+count.index}"
//  from_port      = 0
//  to_port        = 0
//  cidr_block     = "${element(var.public_cidr, count.index)}"
//  egress         = false
//}
//
//resource "aws_network_acl_rule" "internal-traffic-from-private-ingress" {
//  count          = "${length(var.private_cidr)}"
//  network_acl_id = "${aws_network_acl.internal.id}"
//  protocol       = "-1"
//  rule_action    = "allow"
//  rule_number    = "${200+count.index}"
//  from_port      = 0
//  to_port        = 0
//  cidr_block     = "${element(var.private_cidr, count.index)}"
//  egress         = false
//}
//
//resource "aws_network_acl_rule" "internal-traffic-from-data-ingress" {
//  count          = "${length(var.data_cidr)}"
//  network_acl_id = "${aws_network_acl.internal.id}"
//  protocol       = "-1"
//  rule_action    = "allow"
//  rule_number    = "${300+count.index}"
//  from_port      = 0
//  to_port        = 0
//  cidr_block     = "${element(var.data_cidr, count.index)}"
//  egress         = false
//}
