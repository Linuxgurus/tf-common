module "subnets" {
  source = "../../subnet"
  route_table = aws_route_table.table.id
  for_each = module.naming.env.private_subnets
  cloud = var.cloud
  vpc_id = var.vpc_id
  cidr_block = each.key
  availability_zone = each.value
}

