variable "id" {
  type = "string"
  description = "name of the subnet to be created"
}

variable "virtualprivatecloud" {
  description = "Indicates the unique identifier of the relevant vpc"
}

variable "availabilityzone" {
  type = "string"
  description = "availability zone to create subnet"
}

variable "cidr" {
  type = "string"
  description = "CIDR block for the subnet"
}

variable "public" {
  type = "string"
  description = "Indicates whether the subnet must be publicly accessible"
}

variable "ipv4cidr" {
  description = "Indicates whether the relevant vpc has been successfully created"
  default = null
}

variable "k8stag" {
  type = "string"
  description = "Indicates the ID of the related kubernetes cluster"
}

variable "lbtag" {
  type = "string"
  description = "Indicates the type of the related loadbalancer"
}