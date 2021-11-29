
resource "aws_security_group"  "admin" {
  name = module.naming.env.admin_sg
  description = "Admin SG for ${var.cloud}"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(module.naming.tags, { Name: module.naming.env.admin_sg })
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
  tags = merge(module.naming.tags, { Name: module.naming.env.base_sg })
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

