output "aws_vpi_id" {
  value = module.vpc.vpc_id
}

output "aws_subnet_id" {
  description = "Subnet Id for the route table"
  value       = module.subnet.subnet_id
}