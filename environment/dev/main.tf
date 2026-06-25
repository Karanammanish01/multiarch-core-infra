# Checkov:skip=CKV2_AWS_11: "Ensure VPC flow logging is enabled in all VPCs"

module "vpc" {
  source = "../../modules/networking/vpc"

  region     = var.aws_region
  cidr_block = var.cidr_block
}

module "security_group" {
  source = "../../modules/networking/security_group"

  name       = var.security_group_name
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.cidr_block
}