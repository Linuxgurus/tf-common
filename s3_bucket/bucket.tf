resource "aws_s3_bucket" "bucket" {
  bucket = module.naming.tld_name
  acl    = var.acl
  tags = module.naming.tags
  versioning { enabled =  var.versioning }
  policy var.policy
}


