resource "aws_subnet" "subnet" {
  vpc_id = "${var.virtualprivatecloud.id}"
  availability_zone = "${var.availabilityzone}"
  cidr_block = "${var.cidr}"
  tags = {
    Name = "${var.id}"
    "kubernetes.io/cluster/${var.k8stag}" = "owned"
    "kubernetes.io/role/${var.lbtag}" = 1
    KubernetesCluster = "${var.k8stag}"
  }
  map_public_ip_on_launch = "${var.public}"

  depends_on = ["var.ipv4cidr"]
}