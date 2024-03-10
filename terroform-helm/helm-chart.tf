resource "helm_release" "velero" {
  count = var.enable ? 1 : 0
  name       = "server"
  namespace  =  var.namespace
  repository = "./local_charts/"
  version    = "6.0.0"
  chart      = "velero"

values = [ templatefile("${path.module}/velero/values.yaml", {
  backupStorageLocation_name = var.backupStorageLocation_name
  backupStorageLocation_bucket = var.backupStorageLocation_bucket
})]

}