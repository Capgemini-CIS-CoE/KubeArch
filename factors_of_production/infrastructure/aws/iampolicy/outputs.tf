output "master" {
  value = "${aws_iam_policy.master}"
}

output "worker" {
  value = "${aws_iam_policy.worker}"
}