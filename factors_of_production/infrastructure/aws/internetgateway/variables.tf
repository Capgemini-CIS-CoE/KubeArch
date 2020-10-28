variable "id" {
  type = "string"
  description = "The id of the internetgateway"
}

variable "virtualprivatecloud" {
  description = "The virtualprivatecloud to which the internetgateway must be attached"
}

variable "k8stag" {
  type = "string"
  description = "Indicates the ID of the related kubernetes cluster"
}