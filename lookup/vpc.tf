variable cloud {  }

data "aws_vpc"  "vpc" {
  filter {
    name = var.cloud
  }
}

output vpc  { value = data.aws_vpc.vpc }


