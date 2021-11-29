module "naming" {
  source = "../../naming"
  cloud = var.cloud
  cluster = var.cluster
  name = var.name
  app = var.app
}


