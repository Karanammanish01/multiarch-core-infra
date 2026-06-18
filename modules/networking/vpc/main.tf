resource "aws_vpc" "vpc_block" {
    region = var.region
    cidr_block = var.cidr_block
}