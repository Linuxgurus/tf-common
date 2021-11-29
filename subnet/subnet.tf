
resource "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  tags = module.naming.tags
  availability_zone = var.availability_zone
  map_public_ip_on_launch = var.public
}

resource "aws_route_table_association" "route" {
  count = route_table ? 1 : 0
  route_table_id = var.route_table
  subnet_id = aws_subnet.subnet.id
}

