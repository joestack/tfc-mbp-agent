provider "kubernetes" {
  load_config_file = "false"

 host = "https://kubernetes.docker.internal:6443"
 insecure = "true"
# token = var.k8s_token

 client_certificate     = "var.client_certificate"
 client_key             = "var.client_key"
 cluster_ca_certificate = "var.cluster_ca_certificate"

}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}