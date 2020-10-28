variable "id" {
  type = "string"
  description = "ID of the NatGateway"
}

variable "subnet" {
  description = "Subnet to which the nat gateway must be assigned"
}

variable "k8stag" {
  type = "string"
  description = "Indicates the ID of the related kubernetes cluster"
}