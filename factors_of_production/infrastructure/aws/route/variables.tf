variable "id" {
  type = "string"
  description = "ID for the route"
}

variable "routetable" {
    description = "The routetable to which the route must be added"
}

variable "cidr" {
  type = "string"
  description = "Public CIDR block for the VPC"
}

variable "natgateway" {
  description = "The natgateway to which the traffic must be routed"
  default = ""
}

variable "gateway" {
  description = "The gateway to which the traffic must be routed"
  default = ""
}