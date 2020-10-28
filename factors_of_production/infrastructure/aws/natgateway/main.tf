resource "aws_eip" "nat-gw-eip" {
  vpc = true
}

resource "aws_nat_gateway" "kubernetes-nat-gw" {
  allocation_id = "${aws_eip.nat-gw-eip.id}"
  subnet_id = "${var.subnet.id}"
  tags = {
    Name = "${var.id}"
    "kubernetes.io/cluster/${var.k8stag}" = "owned"
    KubernetesCluster = "${var.k8stag}"
  }
}