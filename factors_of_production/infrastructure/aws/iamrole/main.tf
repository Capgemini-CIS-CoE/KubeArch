resource "aws_iam_role" "kubernetes-role" {
  name = "${var.id}"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  depends_on = ["var.iampolicy"]
}

resource "aws_iam_role_policy_attachment" "kubernetes-attachment" {
  role = "${aws_iam_role.kubernetes-role.name}"
  policy_arn = "${var.iampolicy[0].arn}"

  depends_on = ["aws_iam_role.kubernetes-role"]
}