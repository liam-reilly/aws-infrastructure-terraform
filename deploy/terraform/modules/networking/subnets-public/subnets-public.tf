resource "aws_subnet" "public-subnet" {
  count             = 3
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${element(var.public_cidr_block, count.index)}"
  availability_zone = "${element(var.availability_zones, count.index)}"

  tags {
    Name = "public.${var.aws_region}.az${count.index + 1}"
    Tier = "public"
  }
}

output "public_subnet_ids" {
  value = "${aws_subnet.public-subnet.*.id}"
}
