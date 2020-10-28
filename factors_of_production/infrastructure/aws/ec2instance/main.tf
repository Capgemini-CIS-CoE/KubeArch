resource "aws_iam_instance_profile" "kubernetes-instance-profile" {
  name = "kubernetes-${var.id}-profile"
  role = "${var.iamrole.name}"
}

resource "aws_instance" "kubernetes-instance" {
  ami = "${var.ami}"
  instance_type = "${var.type}"
  iam_instance_profile = "${aws_iam_instance_profile.kubernetes-instance-profile.name}"
  associate_public_ip_address = "${var.subnet.map_public_ip_on_launch}"
  subnet_id = "${var.subnet.id}"
  vpc_security_group_ids = ["${var.securitygroup.id}"]
  key_name = "${var.key}"
  tags = {
    Name = "${var.id}"
    "kubernetes.io/cluster/${var.k8stag}" = "owned"
    KubernetesCluster = "${var.k8stag}"
  }
}