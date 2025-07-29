resource "aws_nat_gateway" "tf_aws_nat_gateway" {
  allocation_id = aws_eip.tf_aws_elasticIP[count.index].id
  subnet_id     = aws_subnet.tf_aws_public_subnet[count.index].id
  count = var.count_subnets

  tags = {
    Name = "${var.name}-nat-gateway-${count.index + 1}"
    Environment = var.environment
  }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.example]
}