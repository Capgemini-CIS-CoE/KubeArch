variable "id" {
  type = "string"
  description = "ID of the security group"
}

variable "virtualprivatecloud" {
  description = "The virtualprivatecloud to which the security group must be added"
}

variable "k8stag" {
  type = "string"
  description = "Indicates the ID of the related kubernetes cluster"
}