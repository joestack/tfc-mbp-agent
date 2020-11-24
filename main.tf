provider "kubernetes" {
#  load_config_file = "false"

  host = "https://kubernetes.docker.internal:6443"
  #insecure = "true"

 # client_certificate     = "${var.client_certificate}"
 # client_key             = "${var.client_key}"
 # cluster_ca_certificate = "${var.cluster_ca_certificate}"

}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}