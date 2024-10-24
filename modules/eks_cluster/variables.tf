variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "role_arn" {
  description = "The IAM role ARN for EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets where the EKS cluster will be deployed"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the node group"
  type        = string
}

variable "node_role_arn" {
  description = "The IAM role ARN for the EKS node group"
  type        = string
}

variable "desired_size" {
  description = "Desired size of the node group"
  type        = number
}

variable "min_size" {
  description = "Minimum size of the node group"
  type        = number
}

variable "max_size" {
  description = "Maximum size of the node group"
  type        = number
}
