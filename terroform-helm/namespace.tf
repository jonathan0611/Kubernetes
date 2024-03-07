resource "kubernetes_namespace" "velero" {
  metadata {
    name = "velero"
  }
}