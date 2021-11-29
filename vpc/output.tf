
output "vpc_id" { value = aws_vpc.vpc.id }
output "igw" { value = var.add_igw ? null : aws_internet_gateway.igw[0] }

