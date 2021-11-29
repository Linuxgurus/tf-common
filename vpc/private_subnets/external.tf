module "naming" {
  source = "../../naming"
  cloud = var.cloud
  cluster = "private"
  name = var.name
  app = var.app
}


