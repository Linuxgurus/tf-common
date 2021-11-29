resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = module.naming.tags
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id
  tags = module.naming.tags
}

resource "aws_route" "public" {
  route_table_id = aws_route_table.public.id
  gateway_id = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}


module "public_subnets" {
  source = "../subnet"
  route_table = aws_route_table.public.id
  for_each = module.naming.env.public_subnets
  cloud = var.cloud
  vpc_id = aws_vpc.vpc.id
  cidr_block = each.key
  availability_zone = each.value
  public = true
}

