//resource "aws_security_group" "private-load-balancer" {
//  name   = "private-load-balancer"
//  vpc_id = "${aws_vpc.private.id}"
//
//  ingress {
//    from_port   = 0
//    protocol    = "-1"
//    to_port     = 0
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//
//  egress {
//    from_port   = 0
//    protocol    = "-1"
//    to_port     = 0
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//
//  tags {
//    Name = "private-load-balancer"
//  }
//}
