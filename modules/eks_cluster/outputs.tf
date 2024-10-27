output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS cluster's endpoint"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "kubeconfig" {
  description = "Kubeconfig file for accessing the cluster"
  value       = aws_eks_cluster.eks_cluster.kubeconfig
}
