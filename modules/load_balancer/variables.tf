variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "security_groups" {
  description = "Security groups to attach to the load balancer"
  type        = list(string)
}

variable "subnet_ids" {
  description = "Subnets where the load balancer will be deployed"
  type        = list(string)
}
