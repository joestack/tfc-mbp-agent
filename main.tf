#provider "kubernetes" {
#  config_path = "/root/.kube/config"
#}
#
#resource "kubernetes_namespace" "example" {
#  metadata {
#    name = "my-first-namespace"
#  }
#}

provider "helm" {
  kubernetes {
    config_path = "/root/.kube/config"
  }
}

resource "helm_release" "vault" {
  name       = "vault"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "vault"
  #version    = "6.0.1"

  values = [
    file("values.yaml")
  ]

}