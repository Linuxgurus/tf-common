module "tags" {
  source = "git@github.com:gbpn/terraform-common.git//tags?ref=HEAD"
  locale = module.cloud.locale
  name = module.cloud.name
}

