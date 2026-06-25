output "subnet_id" {

  description = "Subnet Value"

  value = {
    for key, pe in aws_subnet.this :
    key => pe.id
  }
}