resource "aws_route_table" "tf_aws_private_route_table" {
  vpc_id = aws_vpc.tf_aws_vpc.id
  count = var.count_subnets

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.tf_aws_nat_gateway[count.index].id

  }

   
  tags = {
    Name = "${var.name}-private-route-table${count.index + 1}"
    Environment = var.environment
  }
}

