resource "aws_vpc"  "vpc" {
  cidr_block = module.common.info.cidr_block
  tags = module.common.tags
}

