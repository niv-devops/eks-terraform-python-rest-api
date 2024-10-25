variable "public_subnet_id" {
  description = "Public subnets ID to deploy the NAT Gateway to"
  type        = string
}

variable "eip_name" {
  description = "Elastic IP's name tag associated with the NAT Gateway"
  type        = string
  default     = "eip_nat_gtw"
}

variable "nat_name" {
  description = "NAT Gateway's name tag"
  type        = string
  default     = "nat_gtw"
}

