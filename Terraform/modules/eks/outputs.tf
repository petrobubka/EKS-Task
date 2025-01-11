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