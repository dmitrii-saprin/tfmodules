module "nat_gw_eip" {
  source = "../eip"
  counts  = var.counts
  tags   = merge(var.tags, tomap({"Name" = format("%s", var.name)}))
}


resource "aws_nat_gateway" "nat_gw" {
  subnet_id     = element(var.subnet_ids,count.index)
  #allocation_id = module.nat_gw_eip[count.index].ids[count.index]
  allocation_id = module.nat_gw_eip.ids[count.index]
  count         = var.counts
  tags          = merge(var.tags, tomap({"Name" = format("%s", var.name)}))
}