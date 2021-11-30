module  "logs" {
  source = "../s3_bucket"
  cloud = var.cloud
  cluster = var.cluster
  name = "logs"
}

