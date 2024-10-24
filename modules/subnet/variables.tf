variable "vpc_id" {
  description = "VPC ID where the subnets will be created"
  type        = string
}

variable "public_cidr_block" {
  description = "The CIDR block for public subnet"
  type        = string
}

variable "private_cidr_block" {
  description = "The CIDR block for private subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to deploy subnets"
  type        = string
}
