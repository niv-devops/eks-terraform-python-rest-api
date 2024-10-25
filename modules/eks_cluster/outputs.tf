output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = aws_eks_cluster.this.endpoint
}

output "kubeconfig" {
  description = "Kubeconfig file for accessing the cluster"
  value       = aws_eks_cluster.this.kubeconfig
}
