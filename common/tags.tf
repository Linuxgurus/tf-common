locals {
  tags = merge(
    local.cloud[var.cloud].naming,
    { Name    = var.name},
    var.extra_tags 
  )
}

