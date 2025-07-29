resource "aws_route_table_association" "tf_public_route_association" {
  subnet_id      = aws_subnet.tf_aws_public_subnet[count.index].id
  route_table_id = aws_route_table.tf_aws_public_route_table.id
  count = var.count_subnets
}