aws_region          = "us-east-1"
cidr_block          = "10.0.0.0/16"
security_group_name = "default_sg"

subnets = {
  "public_subnet" = {
    cidr_block = "10.0.1.0/24"
  }

  "priave_subnet" = {
    cidr_block = "10.0.2.0/24"
  }
}