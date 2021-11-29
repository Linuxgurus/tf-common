output "env" { value = merge(local.envs["common"], local.envs[var.cloud]) }

