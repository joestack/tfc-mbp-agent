provider "kubernetes" {
  #config_path = "/root/.kube/config"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}