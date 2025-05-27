variable "name" {
  description = "(Required) VPC Name."
  type        = string
  default     = null
}

variable "vpc_cidr" {
  description = "(Required) VPC CIDR block."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Required) VPC Tags to apply."
  type        = map(any)
  default     = {}
}