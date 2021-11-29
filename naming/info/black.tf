locals {
  envs {
    black =  {
      name        = "black"

      naming      = {
        stage     = "prod"
        env       = "black"
      }

      aws_profile = "gbpn"
      tld         = "black.gbpn.com"  
      region      = "us-west-2"
      base_sg     = "black-base"
      base_iam    = "unknown"
    }
  }
}

