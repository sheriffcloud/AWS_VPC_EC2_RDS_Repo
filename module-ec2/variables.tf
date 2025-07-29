variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "name" {
  description = "The name of the VPC"
  type = string
  default = "deen"
  
}

variable "environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)"
  type = string
  default = "production"
  
}

variable "create_subnets" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type = bool
  default = true
  
}

variable "count_subnets" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type = number
  default = 2
  
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type = string
  default = "ami-020cba7c55df1f615"
  
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type = string
  default = "t2.micro"
  
}

variable "private_subnet_ids" {
  type = list(string)
  description = "The ID of the private subnet"
  
}

variable "public_subnet_ids" {
  type = list(string)
  description = "The ID of the public subnet"
  
}

variable "vpc_security_group_ids" {
  type = string
  description = "The ID of the security group"
  
}



