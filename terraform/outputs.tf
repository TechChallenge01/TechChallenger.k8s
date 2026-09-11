output "cluster_name" {
  description = "Nome do cluster EKS"
  value       = aws_eks_cluster.cluster.name
}

output "cluster_endpoint" {
  description = "Endpoint da API do EKS"
  value       = aws_eks_cluster.cluster.endpoint
}

output "ecr_repository_url" {
  description = "URL do repositorio ECR (para referencia; a esteira descobre isso sozinha)"
  value       = aws_ecr_repository.app.repository_url
}

# O RDS agora e provisionado no repo TechChallenger.db -- ver os outputs
# database_endpoint / database_username la.
