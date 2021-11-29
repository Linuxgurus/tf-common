resource "aws_vpc"  "vpc" {
  cidr_block = module.naming.env.cidr_block
  tags = module.naming.tags
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = module.naming.tags
}

resource "aws_nat_gateway" "natgw" {
  count = var.add_nat ? 1 : 0
  tags = module.naming.tags
}
