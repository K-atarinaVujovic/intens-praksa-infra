resource "helm_release" "intens" {
  name      = "intens"
  chart     = "${path.module}/../intens/"
  namespace = "default"
  values    = [file("${path.module}/../intens/values.yaml")]
}

resource "helm_release" "prometheus" {
  name      = "prometheus-stack"
  namespace = "monitoring"
  chart     = "oci://ghcr.io/prometheus-community/charts/kube-prometheus-stack"
  values    = [file("${path.module}/../intens/monitoring-values.yaml")]
}