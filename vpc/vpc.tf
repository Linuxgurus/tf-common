resource "aws_vpc"  "vpc" {
  cidr_block = module.naming.env.cidr_block
  tags = module.naming.tags
}

resource "aws_internet_gateway" "igw" {
  count = var.add_igw ? 1 : 0
  tags = module.naming.tags
}

