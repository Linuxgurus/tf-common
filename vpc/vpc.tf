resource "aws_vpc"  "vpc" {
  cidr_block = module.naming.env.cidr_block
  tags = module.naming.tags
}

resource "aws_nat_gateway" "natgw" {
  count = var.nat_subnet ? 1 : 0
  subnet_id = var.nat_subnet
  tags = module.naming.tags
}

