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


variable "db_name" {
  type = string
  description = "The name of the database"
  default = "deen_db"
  
}

variable "db_username" {
  type = string
  description = "The username of the database"
  default = "admin"
  
}

variable "db_password" {
  type = string
  description = "The password of the database"
  default = "Password123"
  
}

variable "instance_class" {
  type = string
  description = "The instance class of the database"
  default = "db.t3.micro"
  
}





