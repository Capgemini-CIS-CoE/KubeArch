variable "id" {
  type = "string"
  description = "ID of the instance"
}

variable "ami" {
  type = "string"
  description = "AMI that serves as the basis for the instance to be created"
}

variable "type" {
  type = "string"
  description = "Type of the instance"
}

variable "subnet" {
  description = "Subnet to which the instance must be assigned"
}

variable "securitygroup" {
  description = "The securitygroup in which the instance must be created"
}

variable "key" {
  type = "string"
  description = "The name of the SSH key pair that must be used to connect to the instance"
}

variable "k8stag" {
  type = "string"
  description = "Indicates the ID of the related kubernetes cluster"
}

variable "iamrole" {
  description = "The role assigned to the instance"
}