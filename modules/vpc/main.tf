# modules/vpc/main.tf
resource "aws_vpc" "eks-vpc" {
  cidr_block = var.cidr_block
  tags = var.tags
}

# modules/vpc/outputs.tf
output "vpc_id" {
  value = aws_vpc.eks-vpc.id
}

# modules/vpc/variables.tf
variable "cidr_block" {}
variable "tags" {}
