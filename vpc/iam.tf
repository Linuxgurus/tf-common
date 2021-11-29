locals {
  iam_pre = module.common.name_pre
  policy_name = "${local.iam_pre}-base"
}


resource aws_iam_policy "base" {
  name = local.policy_name
  description = "Base System Role for ${var.cloud}"
  path = "/"
  tags = module.common.tags
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:ListBucket", "s3:GetObject"]
        Effect   = "Allow"
        Resource = [ 
          module.garbage_bucket.arn,
          "${module.garbage_bucket.arn}/*"
        ]
      },
    ]
  })
}
