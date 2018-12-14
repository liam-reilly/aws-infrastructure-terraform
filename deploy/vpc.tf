resource "aws_vpc" "private" {
  cidr_block = "10.0.0.0/16"

  tags {
    Name = "private-vpc"
  }
}
