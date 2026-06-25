variable "name" {
  description = "Name of the Security group"
  type        = string
}

variable "vpc_id" {
  description = "Id for which the VPC and security group is"
  type        = string
}

variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

variable "tags" {
  description = "Tag for the resource"
  type        = map(string)
  default     = {}
}