
output "vpc_id" { value = aws_vpc.vpc.id }
output "igw" { value = aws_internet_gateway.igw.id }
output "natgw" { value = var.nat_subnet ? null : aws_nat_gateway.natgw[0] }

