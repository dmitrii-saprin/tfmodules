variable "vpc_id" {
  description = "(Required) The VPC ID."
  type        = string
}

variable "availability_zones" {
  description = "(Required) The AZs for the subnets."
  type        = list
}

variable "subnet_cidrs" {
  description = "(Required) The CIDR blocks for the subnets."
  type        = list
}

variable subnet_name {
  description = "(Required) Subnet group name."
  type        = string
}

variable map_public_ip_on_launch {
  description = "(Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false."
  type        = string
  default     = false
}

variable tags {
  description = "(Required) A mapping of tags to assign to the resource."
  type        = map
}

variable "subnet_count" {
  type    = string
  default = ""
}
