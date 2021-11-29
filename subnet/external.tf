locals {
  stance = var.public==false ? "private" : "public" 
  az_short = substsr(var.availability_zone,-2,-1)
}
module "naming" {
  source = "git@github.com:gbpn/terraform-common.git//naming?ref=HEAD"
  cloud = var.cloud
  cluster = var.cluster
  app  = var.app
  name = "${var.cloud}-${local.stance}-${local.az_short}"
}

