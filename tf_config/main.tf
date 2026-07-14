resource "helm_release" "intens" {
  name      = "intens"
  chart     = "${path.module}/../intens/"
  namespace = var.ENV
  values    = [file("${path.module}/../intens/values.yaml")]
}