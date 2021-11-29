locals {
  name_pre = join("-", compact([var.cloud, var.cluster, var.app]))
  name = "${local.name_pre}-${var.name}"
  tld_pre = "gpbn-${local.name_pre}"
  tld_name = "gbpn-${local.name}"
}
output "tags"     {
  value = local.tags
}

output "info" {
  value = local.cloud[var.cloud]
}

output "name_pre" { value = local.name_pre }
output "name"     { value = local.name     }
output "tld_pre"  { value = local.tld_pre  }
output "tld_name" { value = local.tld_name }

