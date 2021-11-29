module  "garbage_bucket" {
  source = "../s3_bucket"
  cloud = var.cloud
  cluster = var.cluster
  name = "garbage"
}

