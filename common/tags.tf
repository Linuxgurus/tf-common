locals {
  tags = merge(local.cloud[var.cloud], { Name    = var.name}, var.extra_tags )
}

