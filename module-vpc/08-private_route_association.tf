resource "aws_route_table_association" "tf_private_route_association" {
  subnet_id      = aws_subnet.tf_aws_private_subnet[count.index].id
  route_table_id = aws_route_table.tf_aws_private_route_table[count.index].id
  count = var.count_subnets
}