
resource aws_iam_role "base" {
  name = "${var.cloud}-base"
  description = "Base System Role for ${var.cloud}"
    assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = { Service = "ec2.amazonaws.com" }
      },
    ]
  })
  tags = module.common.tags
}
