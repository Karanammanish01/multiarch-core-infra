#checkov:skip=CKV2_AWS_5: Security group is a reusable module and will be attached by consuming resources

locals {
  base_tags = {
    module = "security_group"
  }

  merged_tags = merge(local.base_tags, var.tags)
}

resource "aws_security_group" "this" {
  name        = var.name
  description = "Rule for the Inbound and Outbound"

  vpc_id = var.vpc_id
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.this.id
  cidr_ipv4         = var.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443

  description = "Allowing the port 443"
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.this.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports

  description = "All ports are allowed"
}
