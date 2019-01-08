resource "aws_subnet" "public-subnet" {
  count             = 3
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${element(var.public_cidr, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "public.${var.region}.az${count.index + 1}"
    Tier = "public"
  }
}

output "public_subnet_ids" {
  value = "${aws_subnet.public-subnet.*.id}"
}
