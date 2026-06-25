locals {
  base_tags = {
    module = "vpc"
  }

  merged_tags = merge(local.base_tags, var.tags)
}


resource "aws_vpc" "vpc_block" {
  region     = var.region
  cidr_block = var.cidr_block

  tags = local.merged_tags
}

resource "aws_default_security_group" "this" {
  vpc_id = aws_vpc.vpc_block.id

  ingress = []
  egress  = []
}