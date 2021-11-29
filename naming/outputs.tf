locals {
  name_pre = join("-", compact([var.cloud, var.cluster, var.app]))
  name = join("-", compact([local.name_pre, var.name]))
  tld_pre = "gpbn-${local.name_pre}"
  tld_name = "gbpn-${local.name}"
}

output name     { value = local.name }
output name_pre { value = local.name_pre }
output tld_pre  { value = local.tld_pre  }
output tld_name { value = local.tld_name }

output env      { value = module.info.env }
output tags     { value = module.tags.tags }


