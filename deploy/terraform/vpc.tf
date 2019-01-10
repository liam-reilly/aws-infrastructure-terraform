resource "aws_vpc" "private" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "vpc.private.${var.region}"
  }
}

//resource "aws_vpc_endpoint" "private-s3" {
//  vpc_id          = "${aws_vpc.private.id}"                         #
//  service_name    = "com.amazonaws.eu-west-2.s3"
//  route_table_ids = ["${aws_route_table.private-route-table.*.id}"]
//
//  policy = <<POLICY
//{
//    "Version":"2008-10-17",
//    "Statement": [
//        {
//            "Action": "s3:*",
//            "Effect": "Allow",
//            "Resource": "*",
//            "Principal": "*"
//        }
//    ]
//}
//POLICY
//  
//}
