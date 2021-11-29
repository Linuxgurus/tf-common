output "env" {
  value = merge(local.env['common'], local.env[var.cloud])
}

