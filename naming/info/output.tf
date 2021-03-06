output "env" { value = merge(local.envs["common"], local.envs[var.cloud]) }

output pre      { value = local.pre }
output name     { value = local.name }
output tld_pre  { value = local.tld_pre  }
output tld_name { value = local.tld_name }
