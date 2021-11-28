resource "aws_security_group"  "admin" {
  name = "${var.cloud}-admin"
  description = "Admin SG for ${var.cloud}"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

resource "aws_security_group"  "base" {
  name = "${var.cloud}-base"
  description = "Base SG for ${var.cloud}"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

resource aws_security_group_rule  "admin_ssh" {
  description = "SSH Access from Admins"
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  security_group = aws_security_group.base.id
  source_security_group_id = aws_security_group.admin.id
}

