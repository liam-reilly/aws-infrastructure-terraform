resource "aws_subnet" "public-subnet" {
  count             = 3
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${element(var.public_cidr, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "subnet.public.${var.region}.az${count.index + 1}"
    Tier = "public"
  }
}

resource "aws_subnet" "private-subnet" {
  count             = 3
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${element(var.private_cidr, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "subnet.private.${var.region}.az${count.index + 1}"
    Tier = "private"
  }
}
