variable "vpc_id" {
  description = "VPC ID for the subnet"
  type        = string
}

variable "subnet_name" {
  type = map(object({
    cidr_block = string
  }))
}

variable "tags" {
  description = "Tag for the subnet"
  type        = map(string)
  default     = {}
}