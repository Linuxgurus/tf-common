module "private_subnets"  {
  source "./private_subnets"
  vpc_id = aws_vpc.vpc

  cloud = var.cloud
  cluster = var.cluster
  name = var.name 
  app = var.app 
}
