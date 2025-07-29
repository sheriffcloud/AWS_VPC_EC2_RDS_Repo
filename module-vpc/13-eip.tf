resource "aws_eip" "tf_aws_elasticIP" {
    domain   = "vpc"
    count = var.count_subnets

    tags = {
    Name = "${var.name}-eip-${count.index + 1}"
    Environment = var.environment
  }

  depends_on = [ aws_internet_gateway.tf_aws_igw ]
}

