module "common" {
  source = "git@github.com:gbpn/terraform-common.git//common?ref=HEAD"
  cloud = var.cloud
  cluster = "core"
  name = "core"
}


