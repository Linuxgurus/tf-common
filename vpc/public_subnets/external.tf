module "naming" {
  source = "../../naming"
  cloud = var.cloud
  cluster = "public"
  name = var.name
  app = var.app
}


