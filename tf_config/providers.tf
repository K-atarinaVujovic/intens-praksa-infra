terraform {
  backend "local" {}

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "3.2.1"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "3.2.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "C:/Users/khheh/.kube/config"
  config_context = "minikube"
}


provider "helm" {
  kubernetes = {
    config_path    = "C:/Users/khheh/.kube/config"
    config_context = "minikube"
  }
}