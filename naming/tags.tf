locals {
  tags = merge(var.locale, { Name    = var.name}, var.extra_tags )
}

