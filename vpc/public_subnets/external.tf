module "naming" {
  source = "../../naming"
  cloud = var.cloud
  cluster = "public"
  name = "public"
  app = var.app
}


