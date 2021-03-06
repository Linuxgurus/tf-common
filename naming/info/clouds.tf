locals {
  pre = join("-", compact([var.cloud, var.cluster, var.app]))
  name = join("-", compact([local.pre, var.name]))
  tld_pre = "gpbn-${local.pre}"
  tld_name = "gbpn-${local.name}"

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
      cidr_block  = "10.30.0.0/16"
      public_subnets = {
        "10.30.0.0/25" = "us-west-2a"
        "10.30.2.0/25" = "us-west-2b"
      }
      private_subnets = {
        "10.30.4.0/25" = "us-west-2a"
        "10.30.6.0/25" = "us-west-2b"
      }
    }
  }
}

