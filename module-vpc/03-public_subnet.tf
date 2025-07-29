resource "aws_subnet" "tf_aws_public_subnet" {
  vpc_id     = aws_vpc.tf_aws_vpc.id
  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block = "10.0.${count.index + 1}.0/24" #"10.0.1.0/24"
  count = var.count_subnets

  tags = {
    Name = "${var.name}-public-subnet-${count.index + 1}-${data.aws_availability_zones.available.names[count.index]}"
    Environment = var.environment
  }
}