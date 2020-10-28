variable "id" {
  type = "string"
  description = "ID of the routing rule"
}

variable "securitygroup" {
  description = "The securitygroup to which the routing rule must be added"
}

variable "fromport" {
  type = "string"
  description = "The port from which access should be allowed"
}

variable "toport" {
  type = "string"
  description = "The port for which access should be allowed"
}

variable "protocol" {
  type = "string"
  description = "The protocol which is allowed"
}

variable "cidr" {
  description = "The CIDR blocks from which access is allowed"
}