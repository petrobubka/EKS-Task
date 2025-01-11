variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}


variable "private_subnets" {
  description = "List of private subnet IDs for worker nodes"
  type        = list(string)
}


variable "node_desired_size" {
  description = "Desired number of nodes in the node group"
  type        = number
  default     = 2
}

variable "node_max_size" {
  description = "Maximum number of nodes in the node group"
  type        = number
  default     = 3
}

variable "node_min_size" {
  description = "Minimum number of nodes in the node group"
  type        = number
  default     = 1
}

variable "cluster_version" {
  description = "Version of kubernetes"
  type        = string
  default     = "1.31"
}

variable "ssh_security_group_id" {
  description = "SSH security group id"
  type        = string
}