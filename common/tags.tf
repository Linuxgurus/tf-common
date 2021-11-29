locals {
  tags = merge(
  local.cloud[var.cloud].naming,
  {
    Name    = var.name,
    Cluster = var.cluster,
    App     = var.app
  },
  var.extra_tags 
  )
}

