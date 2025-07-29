resource "aws_instance" "tf_aws_public_ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_ids[count.index]
  count                       = var.count_subnets
  vpc_security_group_ids      = [var.vpc_security_group_ids]
  associate_public_ip_address = true
  key_name                    = "systemadminkey"

  tags = {
    Name        = "${var.name}-server0${count.index + 1}"
    Environment = var.environment
  }
}


resource "aws_instance" "tf_aws_private_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_ids[count.index]
  count                  = var.count_subnets
  vpc_security_group_ids = [var.vpc_security_group_ids]
  key_name               = "systemadminkey"

  tags = {
    Name        = "${var.name}-server0${count.index + 1}"
    Environment = var.environment
  }
}


