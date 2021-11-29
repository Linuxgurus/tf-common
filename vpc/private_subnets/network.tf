resource "aws_route_table" "table" {
  vpc_id = var.vpc_id
  tags = module.naming.tags
}

/*
resource "aws_route" "public" {
  route_table_id = aws_route_table.public.id
  gateway_id = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}
*/
