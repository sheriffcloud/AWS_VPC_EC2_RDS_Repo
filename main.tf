module "vpc-deployment" {
  source = "./module-vpc"

  vpc_cidr_block = var.vpc_cidr_block
  environment    = var.environment
  name           = var.name
  create_subnets = var.create_subnets
  count_subnets  = var.count_subnets
  
}

module "ec2-deployment" {
  source = "./module-ec2"

  vpc_cidr_block         = var.vpc_cidr_block
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  environment            = var.environment
  name                   = var.name
  count_subnets          = var.count_subnets
  public_subnet_ids      = module.vpc-deployment.public_subnet_ids
  private_subnet_ids     = module.vpc-deployment.private_subnet_ids
  vpc_security_group_ids = module.vpc-deployment.vpc_security_group_ids
}


module "rds-deployment" {
  source = "./module-rds"

  db_name                = var.db_name
  db_username            = var.db_username
  db_password            = var.db_password
  instance_class         = var.instance_class
  vpc_security_group_ids = module.vpc-deployment.vpc_security_group_ids
  vpc_cidr_block         = var.vpc_cidr_block
  name                   = var.name
  environment            = var.environment
  private_subnet_ids     = module.vpc-deployment.private_subnet_ids
  public_subnet_ids      = module.vpc-deployment.public_subnet_ids

}


