resource "aws_s3_bucket" "bucket" {
  bucket = module.naming.tld_name
  acl    = "private"
  policy = var.policy
  tags = module.naming.tags
  versioning = { enabled =  var.versioning }
}


