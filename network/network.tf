resource "aws_vpc"  "vpc" {
  cidr_block = module.cloud.info.cidr_block
  tags = module.naming.tags
}

