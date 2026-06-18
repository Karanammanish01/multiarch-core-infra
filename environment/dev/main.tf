module "vpc" {
  source = "../../modules/networking/vpc"

  region     = var.aws_region
  cidr_block = var.cidr_block
}