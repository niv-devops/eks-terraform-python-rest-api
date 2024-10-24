# modules/routing_tables/main.tf
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public.id
}

# modules/routing_tables/variables.tf
variable "vpc_id" {}
variable "subnet_id" {}
variable "internet_gateway_id" {}
