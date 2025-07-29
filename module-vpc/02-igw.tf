resource "aws_internet_gateway" "tf_aws_igw" {
  vpc_id = aws_vpc.tf_aws_vpc.id

  tags = {
    Name = "${var.name}-igw"
    Environment = var.environment
  }
}