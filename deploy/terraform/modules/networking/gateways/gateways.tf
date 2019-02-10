resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "internet-gateway.${var.aws_region}"
  }
}

output "internet_gateway_id" {
  value = "${aws_internet_gateway.internet-gateway.id}"
}

resource "aws_eip" "nat_eip" {
  count = "${length(var.availability_zones)}"
}

resource "aws_nat_gateway" "nat-gateway" {
  count = "${length(var.availability_zones)}"

  allocation_id = "${element(aws_eip.nat_eip.*.id,count.index)}"
  subnet_id     = "${element(var.public_subnet_ids,count.index)}"
}

output "nat_gateway_ids" {
  value = "${aws_nat_gateway.nat-gateway.*.id}"
}