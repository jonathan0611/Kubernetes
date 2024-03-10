resource "kubernetes_namespace" "velero" {
  metadata {
    name = var.namespace
  }
}