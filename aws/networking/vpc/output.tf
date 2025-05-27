
output "internet_gw_id" {
  description = "Internet Gateway ID"
  value       = element(concat(aws_internet_gateway.igw.*.id, tolist([])), 0)
}

output "vpc_id" {
  description = "VPC ID"
  value       = element(concat(aws_vpc.vpc.*.id, tolist([])), 0)
}

output "vpc_cidr" {
  description = "VPC CIDR"
  value       = element(concat(aws_vpc.vpc.*.cidr_block, tolist([])), 0)
}
