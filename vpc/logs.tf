data "aws_caller_identity" "current" {}
locals {
  acct = data.aws_caller_identity.current.account_kd
  bucket_name = "${module.naming.tld_pre}-logs"
}

resource "aws_cloudtrail" "logs" {
  name                          = "tf-trail-foobar"
  s3_bucket_name                = aws_s3_bucket.logs.id
  include_global_service_events = false
}

resource "aws_s3_bucket" "logs" {
  bucket        = local.bucket_name
  force_destroy = true

  policy = <<POLICY
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "AWSCloudTrailAclCheck",
        "Effect": "Allow",
        "Principal": {
          "Service": "cloudtrail.amazonaws.com"
        },
        "Action": "s3:GetBucketAcl",
        "Resource": "arn:aws:s3:::${local.bucket_name}"
      },
      {
        "Sid": "AWSCloudTrailWrite",
        "Effect": "Allow",
        "Principal": {
          "Service": "cloudtrail.amazonaws.com"
        },
        "Action": "s3:PutObject",
        "Resource": "arn:aws:s3:::${local.bucket_name}/AWSLogs/${local.account}"
        "Condition": {
          "StringEquals": {
            "s3:x-amz-acl": "bucket-owner-full-control"
          }
        }
      }
    ]
  }
  POLICY
}


