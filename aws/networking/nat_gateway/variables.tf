variable "tags" {
  type    = map
  default = {}
}

variable "subnet_ids" {
  type    = list
  default = []
}

variable "counts" {
  type    = string
  default = ""
}

variable "name" {
  type    = string
  default = ""
}

variable "instance_id" {
  type    = string
  default = ""
}
