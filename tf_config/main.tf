resource "helm_release" "intens" {
  name = "intens"
  chart = "${path.module}/../intens/"
  namespace = "default"
  values    = [file("${path.module}/../intens/values.yaml")]
}