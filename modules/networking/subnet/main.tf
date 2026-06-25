locals {
  base_tags = {
    module = "subnet"
  }

  merged_tags = merge(local.base_tags, var.tags)
}

resource "aws_subnet" "this" {

  for_each = var.subnet_name

  vpc_id     = var.vpc_id
  cidr_block = each.value.cidr_block

  tags = local.merged_tags
}