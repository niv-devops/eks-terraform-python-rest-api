variable "vpc_id" {
  description = "VPC's ID to associate routing tables"
  type        = string
}

variable "public_subnet_id_a" {
  description = "The ID of the first public subnet"
  type        = string
}

variable "public_subnet_id_b" {
  description = "The ID of the second public subnet"
  type        = string
}

variable "private_subnet_id_a" {
  description = "The ID of the first private subnet"
  type        = string
}

variable "private_subnet_id_b" {
  description = "The ID of the second private subnet"
  type        = string
}

variable "public_route_table_name" {
  description = "The name tag for the public route table"
  type        = string
  default     = "public_route_table"
}

variable "private_route_table_name" {
  description = "The name tag for the private route table"
  type        = string
  default     = "private_route_table"
}

