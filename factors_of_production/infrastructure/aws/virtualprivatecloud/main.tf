resource "aws_vpc" "kubernetes" {
  cidr_block = "${var.cidr}"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.id}"
    "kubernetes.io/cluster/${var.k8stag}" = "owned"
    KubernetesCluster = "${var.k8stag}"
  }
}