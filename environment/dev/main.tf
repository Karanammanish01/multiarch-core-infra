

module "vpc" {
  source = "../../modules/networking/vpc"
  #checkov:skip=CKV2_AWS_11: Flow logs will be implemented later
  region     = var.aws_region
  cidr_block = var.cidr_block
}

module "security_group" {
  
  source = "../../modules/networking/security_group"
  #checkov:skip=CKV2_AWS_5: Security group is a reusable module and will be attached by consuming resources
  
  name       = var.security_group_name
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.cidr_block
}