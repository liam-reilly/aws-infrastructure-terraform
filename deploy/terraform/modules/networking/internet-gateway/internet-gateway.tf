resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "internet-gateway.${var.aws_region}"
  }
}

output "internet_gateway_id" {
  value = "${aws_internet_gateway.internet-gateway.id}"
}