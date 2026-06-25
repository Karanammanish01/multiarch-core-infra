variable "region" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "tags" {
  description = "Tag for better segrecation"
  type        = map(string)
  default     = {}
}