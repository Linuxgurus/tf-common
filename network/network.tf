resource "aws_vpc"  "vpc" {
  cidr_block = modules.cloud.cidr
  tags = modules.cloud.tags
}
