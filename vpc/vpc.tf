resource "aws_vpc"  "vpc" {
  cidr_block = module.naming.env.cidr_block
  tags = module.naming.tags
}

