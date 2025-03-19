output "subnet_count" {
  value = var.subnet_count
}

output "subnet_ids" {
  value = aws_subnet.subnets.*.id
}