
resource "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  tags = module.naming.tags
  availability_zone = var.availability_zone
  
}
