locals {
  cloud = {
    black =  {
      name        = "black"

      naming      = {
        stage     = "prod"
        env       = "black"
      }

      vpc_id      = "unknown"
      aws_profile = "gbpn"
      cidr_block  = "10.30.0.0/16"
      tld         = "black.gbpn.com"  
      region      = "us-west-2"
      base_sg     = "black-base"
      base_iam    = "unknown"
    }
  }
}
