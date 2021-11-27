module "naming" {
  source = "git@github.com:gbpn/terraform-common.git//naming?ref=HEAD"
  name = var.cloud
  naming = module.cloud.info.naming
}

module "cloud" {
  source = "git@github.com:gbpn/terraform-common.git//cloud?ref=HEAD"
  cloud  = var.cloud
}


