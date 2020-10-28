variable "host" {
  type = "string"
  description = "Describes the host that is of relevance"
}

variable "path" {
  type = "string"
  description = "Describes the path of the hosts file"
}

variable "ec2instance" {
  description = "The EC2Instance that must be exported"
}