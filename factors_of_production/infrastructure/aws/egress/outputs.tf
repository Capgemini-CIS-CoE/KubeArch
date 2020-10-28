output "egress" {
  value = "${aws_security_group_rule.kubernetes-egress}"
}