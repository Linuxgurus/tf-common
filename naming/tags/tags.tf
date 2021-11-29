locals {
  tags = {
    Name    = join("-", compact([var.cloud, var.cluster, var.app, var.name]))
    Cluster = var.cluster,
    App     = var.app
    Cloud   = var.cloud
  }
}

