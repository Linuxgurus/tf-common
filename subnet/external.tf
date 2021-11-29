locals {
  stance = var.public==false ? "private" : "public" 
  az_short = substsr(var.availability_zone,-2,-1)
  calc_name  = "${var.cloud}-${local.stance}-${local.az_short}"
  name  = coalesce(var.name, local.calc_name)
}
module "naming" {
  source = "git@github.com:gbpn/terraform-common.git//naming?ref=HEAD"
  cloud = var.cloud
  cluster = var.cluster
  app  = var.app
  name = local.name
}

