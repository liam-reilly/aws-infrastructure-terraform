resource "aws_alb" "alb-private" {
  name               = "alb-private"
  load_balancer_type = "application"
  internal           = true
  idle_timeout       = 400

  subnets = [
    "${aws_subnet.private-subnet.*.id[0]}",
    "${aws_subnet.private-subnet.*.id[1]}",
    "${aws_subnet.private-subnet.*.id[2]}",
  ]

  security_groups = ["${aws_security_group.private-load-balancer.id}"]
  enable_http2    = true

  tags {
    Name = "alb.private"
  }
}