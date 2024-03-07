resource "helm_release" "velero" {
  name       = "server"
  namespace  = "velero"
  repository = "https://vmware-tanzu.github.io/helm-charts/"
  version    = "5.4.1"
  chart      = "velero"
  values = [
    "${file("values.yaml")}"
  ]
}