resource "aws_vpc"  "vpc" {
  cidr_block = module.naming.info.cidr_block
  tags = module.common.tags
}

