variable "aws_region" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "security_group_name" {
  type = string
}

variable "subnets" {
  description = "CIDR BLock value"

  type = map(object({
    cidr_block = string
  }))
}