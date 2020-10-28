resource "aws_route_table" "kubernetes-rtb" {
  vpc_id = "${var.virtualprivatecloud.id}"
  tags = {
    Name = "${var.id}"
    "kubernetes.io/cluster/${var.k8stag}" = "owned"
    KubernetesCluster = "${var.k8stag}"
  }
}

resource "aws_route_table_association" "kubernetes-rta" {
  subnet_id = "${var.subnet.id}"
  route_table_id = "${aws_route_table.kubernetes-rtb.id}"
}