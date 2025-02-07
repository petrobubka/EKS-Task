output "eks_cluster_endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "eks_cluster_id" {
  value = aws_eks_cluster.cluster.id
}

output "eks_cluster_security_group_id" {
  value = aws_eks_cluster.cluster.vpc_config[0].cluster_security_group_id
}

output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}

output "eks_cluster_name" {
  value = aws_eks_cluster.cluster.name
}

output "eks_cluster_authority_data" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}