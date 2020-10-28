resource "aws_route" "natgateway" {
  count = "${var.natgateway != "" ? 1 : 0}"
  route_table_id = "${var.routetable.id}"
  destination_cidr_block = "${var.cidr}"
  nat_gateway_id = "${var.natgateway.id}"
}

resource "aws_route" "gateway" {
  count = "${var.gateway != "" ? 1 : 0}"
  route_table_id = "${var.routetable.id}"
  destination_cidr_block = "${var.cidr}"
  gateway_id = "${var.gateway.id}"
}