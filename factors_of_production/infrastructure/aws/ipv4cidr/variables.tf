variable "id" {
  type = "string"
  description = "ID for the CIDR block"
}

variable "virtualprivatecloud" {
    description = "VirtualPrivateCloud to which the cidr must be associated"
}

variable "cidr" {
  type = "string"
  description = "Public CIDR block for the VPC"
}