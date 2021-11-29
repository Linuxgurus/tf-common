
resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr
  name = module.naming.name
  tags = module.naming.tags
}

