module "public_subnets" {
  source = "../subnet"
  for_each = module.naming.env.public_subnets
  cloud = var.cloud
  vpc_id = aws_vpc.vpc.id
  cidr_block = each.key
  availability_zone = each.value
  public = true
}

module "private_subnets" {
  source = "../subnet"
  for_each = module.naming.env.private_subnets
  cloud = var.cloud
  vpc_id = aws_vpc.vpc.id
  cidr_block = each.key
  availability_zone = each.value
}

