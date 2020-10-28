resource "aws_lb_target_group_attachment" "kubernetes-targetgroup-attachment" {
  target_group_arn = "${var.targetgroup.arn}"
  target_id = "${var.target}"
  port = "${var.port}"
}