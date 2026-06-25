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