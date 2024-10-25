variable "security_group_id" {
  description = "The security group ID to associate with the load balancers"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs for the load balancer"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet IDs for the internal load balancer"
  type        = list(string)
}
