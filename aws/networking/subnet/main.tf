resource "aws_subnet" "subnets" {
  vpc_id                  = var.vpc_id
  count                   = length(var.subnet_cidrs)
  cidr_block              = element(var.subnet_cidrs, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = merge(var.tags, tomap({"Name" = format("%s - %s", var.subnet_name, element(var.availability_zones, count.index))}))
}