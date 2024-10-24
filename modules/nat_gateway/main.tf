# modules/nat_gateway/main.tf
resource "aws_nat_gateway" "this" {
  allocation_id = var.eip_id
  subnet_id     = var.public_subnet_id
}

# modules/nat_gateway/variables.tf
variable "eip_id" {}
variable "public_subnet_id" {}
