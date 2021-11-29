locals {
  pre = module.tags.name_pre
  admin  = "${local.pre}-admin"
  base  = "${local.pre}-base"

  envs =  {
    common = {
      name = var.cloud
      tld = "${var.cloud}.gbpn.com"
      base_sg = local.base
      admin_sg = local.admin
      base_policy = local.base
    }

    black =  {
      stage       = "prod"
      aws_profile = "gbpn"
      region      = "us-west-2"
    }
  }
}

