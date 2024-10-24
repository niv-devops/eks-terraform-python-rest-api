# modules/load_balancer/main.tf
resource "aws_lb" "this" {
  name               = var.lb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.security_groups
  subnets            = var.subnet_ids
}

# modules/load_balancer/variables.tf
variable "lb_name" {}
variable "security_groups" {}
variable "subnet_ids" {}
