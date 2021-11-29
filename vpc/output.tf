
output "vpc_id" { value = aws_vpc.vpc.id }
output "igw" { value = aws_internet_gateway.igw }
output "natgw" { value = var.add_igw ? null : aws_internet_gateway.natgw[0] }

