locals {
  tags = {
    Name    = var.name,
    Cluster = var.cluster,
    App     = var.app
  }
}

