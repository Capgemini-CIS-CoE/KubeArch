variable "targetgroup" {
  description = "The TargetGroup to which the Target must be attached"
}

variable "target" {
  type = "string"
  description = "The IP of the target"
}

variable "port" {
  type = "string"
  description = "The port on which the Target can be accessed"
}