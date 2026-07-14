resource "kubernetes_namespace" "prod" {
  metadata {
    name = "prod"
  }
}

resource "kubernetes_namespace" "dev" {
  metadata {
    name = "dev"
  }
}