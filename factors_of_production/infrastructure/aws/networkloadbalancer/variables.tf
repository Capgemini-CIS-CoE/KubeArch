variable "id" {
  type = "string"
  description = "Describes the NetworkLoadBalancer that is of relevance"
}

variable "private" {
  type = "string"
  description = "Describes whether the NetworkLoadBalancer is internal or not"
}

variable "subnet" {
  description = "The Subnet to which the NetworkLoadBalancer must be attached"
}

variable "targetgroup" {
  description = "The TargetGroup which must be attached to the NetworkLoadBalancer"
}

variable "protocol" {
  type = "string"
  description = "The protocol that must be used by the NetworkLoadBalancer"
}

variable "port" {
  type = "string"
  description = "The port on which the NetworkLoadBalancer listenes"
}

variable "ip" {
  type = "string"
  description = "The private ipv4 address of the NetworkLoadBalancer"
}