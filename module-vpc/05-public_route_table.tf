resource "aws_route_table" "tf_aws_public_route_table" {
  vpc_id = aws_vpc.tf_aws_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf_aws_igw.id
    
  }

 
  tags = {
    Name = "${var.name}-public-route-table"
    Environment = var.environment
  }
}