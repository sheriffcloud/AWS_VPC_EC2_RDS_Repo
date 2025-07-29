output "vpc_id" {
  value       = module.vpc-deployment.vpc_id
  description = "The ID of the VPC"
  sensitive   = true

}

output "private_subnet_ids" {
  value       = module.vpc-deployment.private_subnet_ids
  description = "The ID of the private subnet"

}

output "public_subnet_ids" {
  value       = module.vpc-deployment.public_subnet_ids
  description = "The ID of the public subnet"

}

output "vpc_security_group_ids" {
  value       = module.vpc-deployment.vpc_security_group_ids
  description = "The ID of the security group"

}

output "endpoint_id" {
  value       = module.rds-deployment.endpoint_id
  description = "The ID of the endpoint"
  
}


