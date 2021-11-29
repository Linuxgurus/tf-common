module "tags" {
  source = "./tags"
  cloud = var.cloud
  cluster = var.cluster
  app  = var.app
  name = var.name
}

module "info" {
  source = "./info"
  cloud = var.cloud
  cluster = var.cluster
  app  = var.app
  name = var.name
}

