output "vpc"      { value = "default"               }
output "cidr"     { value = "10.30.0/0/16"          }
output "tld"      { value = "black.gbpn.com"        }

output "sg"       { value = "black-base"            }

output "tags"     {
  value = tomap({
    stage   = "prod"
    env     = "black"
  })
}
