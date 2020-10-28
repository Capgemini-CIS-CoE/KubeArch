variable "id" {
  type = "string"
  description = "ID for the VPC"
}

variable "cidr" {
  type = "string"
  description = "Private CIDR block for the VPC"
}

variable "k8stag" {
  type = "string"
  description = "Indicates the ID of the related kubernetes cluster"
}