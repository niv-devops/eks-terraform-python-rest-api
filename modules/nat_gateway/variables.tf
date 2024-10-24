variable "eip_id" {
  description = "The Elastic IP ID for the NAT Gateway"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the NAT gateway will be deployed"
  type        = string
}
