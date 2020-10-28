resource "aws_vpc_ipv4_cidr_block_association" "cidr" {
  vpc_id = "${var.virtualprivatecloud.id}"
  cidr_block = "${var.cidr}"
}