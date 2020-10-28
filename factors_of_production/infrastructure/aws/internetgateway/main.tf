resource "aws_internet_gateway" "kubernetes-igw" {
  vpc_id = "${var.virtualprivatecloud.id}"
  tags = {
    Name = "${var.id}"
    "kubernetes.io/cluster/${var.k8stag}" = "owned"
    KubernetesCluster = "${var.k8stag}"
  }
}