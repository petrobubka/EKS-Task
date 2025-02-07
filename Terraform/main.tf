
module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  eks_name             = var.cluster_name
}

module "eks" {
  source                = "./modules/eks"
  cluster_name          = var.cluster_name
  private_subnets       = module.vpc.private_subnet_ids
  node_desired_size     = var.node_desired_size
  node_max_size         = var.node_max_size
  node_min_size         = var.node_min_size
  ssh_security_group_id = module.vpc.ssh_security_group_id
  vpc_id                = module.vpc.vpc_id
}

