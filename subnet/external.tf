locals {
  stance = var.public==false ? "private" : "public" 
}
module "naming" {
  source = "git@github.com:gbpn/terraform-common.git//naming?ref=HEAD"
  cloud = var.cloud
  cluster = var.cluster
  app  = var.app
  name = "${var.cloud}-${var.stance}-${var.availability_zone}"
}

