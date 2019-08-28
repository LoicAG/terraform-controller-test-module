variable "namespace_name" {}
variable "kubernetes_host" {}

provider "kubernetes" {
  host     = "https://${var.kubernetes_host}"
  token    = "${file("/var/run/secrets/kubernetes.io/serviceaccount/token")}"
  insecure = true
}

resource "kubernetes_namespace" "toto-namespace" {
  metadata {
    name = "toto-namespace"
  }
}
