resource "aws_security_group" "kubernetes-scg" {
  name = "${var.id}"
  vpc_id = "${var.virtualprivatecloud.id}"
  description = "Managed by KubeArch"
  tags = {
    Name = "${var.id}"
    "kubernetes.io/cluster/${var.k8stag}" = "owned"
    KubernetesCluster = "${var.k8stag}"
  }
}