resource "aws_subnet" "public-subnet" {
  count             = 3
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${var.public_cidr}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "subnet.public.${var.region}.az${count.index + 1}"
    Tier = "public"
  }
}
