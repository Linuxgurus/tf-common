locals {
  sg_pre = module.naming.tags.name_pre
  admin_sg_name  = "${local.sg_pre}-admin"
  base_sg_name  = "${local.sg_pre}-base"
}


resource "aws_security_group"  "admin" {
  name = local.admin_sg_name
  description = "Admin SG for ${var.cloud}"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(module.naming.tags.tags, { Name: local.admin_sg_name })
}

resource "aws_security_group"  "base" {
  name = local.base_sg_name
  description = "Base SG for ${var.cloud}"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(module.naming.tags.tags, { Name: local.base_sg_name })

}

resource aws_security_group_rule  "admin_ssh" {
  description = "SSH Access from Admins"
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  security_group_id = aws_security_group.base.id
  source_security_group_id = aws_security_group.admin.id
}

