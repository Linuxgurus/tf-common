data "aws_caller_identity" "current" {}


module  "logs" {
  source = "../s3_bucket"
  cloud = var.cloud
  cluster = var.cluster
  name = "logs"
  policy = jsonencode({
    Version= "2012-10-17",
    Statement= [
      {
        Sid= "AWSCloudTrailAclCheck",
        Effect= "Allow",
        Principal= {"Service": "cloudtrail.amazonaws.com"},
        Action= "s3:GetBucketAcl",
        Resource= "arn:aws:s3:::*"
      },
      {
        Sid= AWSCloudTrailWrite,
        Effect= Allow,
        Principal= {Service= "cloudtrail.amazonaws.com"},
        Action= "s3:PutObject",
        Resource= "*/AWSLogs/*",
        Condition= {
          StringEquals= { "s3:x-amz-acl" = "bucket-owner-full-control" }
          }
        }
      }
    ]
  })
}


resource "aws_cloudtrail" "logs" {
  name                          = "${module.naming.pre}-logs"
  s3_bucket_name                = module.logs.id
  s3_key_prefix                 = "AWS_LOGS"
  include_global_service_events = false
}

