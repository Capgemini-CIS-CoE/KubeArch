variable "id" {
  type = "string"
  description = "Describes the TargetGroup that is of relevance"
}

variable "virtualprivatecloud" {
  description = "The VirtualPrivateCloud to which the TargetGroup must be attached"
}

variable "protocol" {
  type = "string"
  description = "The protocol that must be used by the NetworkLoadBalancer"
}

variable "port" {
  type = "string"
  description = "The port on which the NetworkLoadBalancer listenes"
}