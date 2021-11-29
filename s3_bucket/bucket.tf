resource "aws_s3_bucket" "bucket" {
  bucket = module.naming.tld_name
  acl    = "private"
  tags = module.naming.tags
}


