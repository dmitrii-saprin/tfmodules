resource "aws_vpc" "vpc" {
  count                = var.name != null ? 1 : 0
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags                 = merge(var.tags, { Name = var.name })
}

resource "aws_default_security_group" "default" {
  count      = var.name != null ? 1 : 0
  vpc_id     = aws_vpc.vpc[0].id
  tags       = var.tags
  depends_on = [aws_vpc.vpc]
  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_default_route_table" "default" {
  count                  = var.name != null ? 1 : 0
  default_route_table_id = aws_vpc.vpc[0].default_route_table_id
  tags                   = var.tags
  depends_on             = [aws_vpc.vpc]
}

resource "aws_internet_gateway" "igw" {
  count      = var.name != null ? 1 : 0
  vpc_id     = aws_vpc.vpc[0].id
  tags       = merge(var.tags, { Name = var.name })
  depends_on = [aws_vpc.vpc]
}
