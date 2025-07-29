output "vpc_id" {
    value = aws_vpc.tf_aws_vpc.id
    description = "The ID of the VPC"
    sensitive = true
  
}

output "private_subnet_ids" {
    value = aws_subnet.tf_aws_private_subnet[*].id
    description = "The ID of the private subnet"
    
}

output "public_subnet_ids" {
    value = aws_subnet.tf_aws_public_subnet[*].id
    description = "The ID of the public subnet"
      
}

output "vpc_security_group_ids" {
    value = aws_security_group.tf_aws_sg.id
    description = "The ID of the security group"
     
}