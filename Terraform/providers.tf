terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82.0"
    }
    tls = {

    }
  }

}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}


