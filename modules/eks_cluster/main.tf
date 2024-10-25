resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }
}

# modules/eks_cluster/variables.tf
variable "cluster_name" {}
variable "role_arn" {}
variable "subnet_ids" {}
variable "node_group_name" {}
variable "node_role_arn" {}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}
