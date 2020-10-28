resource "aws_lb" "kubernetes-loadbalancer" {
  name = "${var.id}"
  internal = "${var.private}"
  load_balancer_type = "network"
  subnet_mapping {
    subnet_id = "${var.subnet}"
    private_ipv4_address = "${var.ip}"
  }
}

resource "aws_lb_listener" "kubernetes-listener" {
  load_balancer_arn = "${aws_lb.kubernetes-loadbalancer.arn}"
  protocol = "${var.protocol}"
  port = "${var.port}"

  default_action {
    type = "forward"
    target_group_arn = "${var.targetgroup.arn}"
  }
}