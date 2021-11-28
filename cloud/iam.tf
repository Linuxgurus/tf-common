
resource aws_iam_policy "base" {
  name = "${var.cloud}-base"
  description = "Base System Role for ${var.cloud}"
  path = "/"
  tags = module.common.tags
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:ListAllMyBuckets"]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })


}
