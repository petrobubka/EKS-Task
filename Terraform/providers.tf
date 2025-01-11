terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82.0"
    }
    tls = {

    }

  helm = {
      source = "hashicorp/helm"
      version = "~> 2.8.0"
    }

  }

}


provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}