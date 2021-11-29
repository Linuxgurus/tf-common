module  "garbage_bucket" {
  source = "../s3_bucket"
  cloud = var.cloud
  cluster = "base"
  name = "garbage"
}

