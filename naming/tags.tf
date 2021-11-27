locals {
  tags = merge(var.naming, { Name    = var.name}, var.extra_tags )
}

