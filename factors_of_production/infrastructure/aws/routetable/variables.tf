variable "id" {
  type = "string"
  description = "Indicates the name of the route table"
}

variable "virtualprivatecloud" {
  description = "The virtual private cloud for which the route table must be created"
}

variable "subnet" {
  description = "Subnet to which the route table must be assigned"
}

variable "k8stag" {
  type = "string"
  description = "Indicates the ID of the related kubernetes cluster"
}