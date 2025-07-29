resource "aws_network_acl_association" "tf_aws_nacl_private_subnet_association" {
  network_acl_id = aws_network_acl.tf_aws_nacl.id
  subnet_id      = aws_subnet.tf_aws_private_subnet[count.index].id
  count = var.count_subnets
}