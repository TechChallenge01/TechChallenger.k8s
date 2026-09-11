variable "aws_region" {
  description = "Regiao AWS onde a infra sera criada"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto, usado como prefixo/tag dos recursos"
  type        = string
  default     = "techchallenge"
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "techchallenge"
}

variable "ecr_repository_name" {
  description = "Nome do repositorio ECR (deve bater com ECR_REPOSITORY no cd.yml)"
  type        = string
  default     = "techchallenger"
}

variable "kubernetes_version" {
  description = "Versao do Kubernetes no EKS"
  type        = string
  default     = "1.30"
}

variable "node_instance_types" {
  description = "Tipos de instancia dos nodes do EKS"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "vpc_cidr" {
  description = "CIDR block da VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDRs das subnets publicas (nodes do EKS)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDRs das subnets privadas (reservadas para o RDS, provisionado no repo TechChallenger.db)"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}
