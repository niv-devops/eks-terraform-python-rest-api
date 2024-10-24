variable "vpc_id" {
  description = "The VPC ID to associate with route table"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with route table"
  type        = string
}

variable "internet_gateway_id" {
  description = "The ID of the internet gateway"
  type        = string
}
