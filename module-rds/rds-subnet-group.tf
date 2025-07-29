resource "aws_db_subnet_group" "tf_aws_rds_subnet_group" {
  name       = "${var.name}-rds-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "${var.name}-rds-subnet-group"
    Environment = var.environment
  }
}