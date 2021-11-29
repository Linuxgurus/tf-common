output "env" { value = merge(local.envs["common"], local.envs[var.cloud]) }

output name     { value = local.name }
output name_pre { value = local.name_pre }
output tld_pre  { value = local.tld_pre  }
output tld_name { value = local.tld_name }
