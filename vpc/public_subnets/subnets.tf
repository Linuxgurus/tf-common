module "subnets" {
  source = "../../subnet"
  route_table = aws_route_table.public.id
  for_each = module.naming.env.public_subnets
  cloud = var.cloud
  vpc_id = var.vpc_id
  cidr_block = each.key
  availability_zone = each.value
  public = true
}

