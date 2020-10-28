resource "aws_lb_target_group" "kubernetes-targetgroup" {
  name = "${var.id}"
  target_type = "ip"
  vpc_id = "${var.virtualprivatecloud}"
  protocol = "${var.protocol}"
  port = "${var.port}"
}