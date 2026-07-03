resource "helm_release" "intens" {
  name = "intens"
  chart = "${path.module}/../intens/"
  namespace = "default"
}