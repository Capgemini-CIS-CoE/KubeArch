output "route-natgateway" {
  value = "${aws_route.natgateway}"
}

output "route-gateway" {
  value = "${aws_route.gateway}"
}