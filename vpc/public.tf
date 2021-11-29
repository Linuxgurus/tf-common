resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = module.naming.tags
}

resource "aws_route_table" "public" {
  tags = module.naming.tags
}

resource "aws_route" "public_local" {
  route_table_id = aws_route_table.public.id
  gateway_id = aws_internet_gateway.igw.id
  destination = aws.naming.env.cidr_block
}

resource "aws_route" "public" {
  route_table_id = aws_route_table.public.id
  gateway_id = aws_internet_gateway.igw.id
  destination = "0.0.0.0/0"
}

