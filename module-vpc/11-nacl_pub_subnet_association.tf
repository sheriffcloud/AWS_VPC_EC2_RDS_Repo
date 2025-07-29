resource "aws_network_acl_association" "tf_aws_nacl_public_subnet_association" {
  network_acl_id = aws_network_acl.tf_aws_nacl.id
  subnet_id      = aws_subnet.tf_aws_public_subnet[count.index].id
  count = var.count_subnets
}