resource "aws_security_group_rule" "kubernetes-egress" {
  type = "egress"
  from_port = "${var.fromport}"
  to_port = "${var.toport}"
  protocol = "${var.protocol}"
  cidr_blocks = "${var.cidr}"
  security_group_id = "${var.securitygroup.id}"
  description = "Managed by KubeArch"
}