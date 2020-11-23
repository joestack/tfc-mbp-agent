## Configure the Docker provider
#provider "docker" {
#  #host = "tcp://127.0.0.1:2376/"
#}
#
## Create a container
#resource "docker_container" "foo" {
#  image = docker_image.ubuntu.latest
#  name  = "foo"
#}
#
#resource "docker_image" "ubuntu" {
#  name = "ubuntu:latest"
#}


provider "kubernetes" {
  load_config_file = "false"

 host = "https://kubernetes.docker.internal:6443"
 insecure = "true"
 token = var.k8s_token
 # host = "https://104.196.242.174"

 # client_certificate     = "${file("~/.kube/client-cert.pem")}"
 # client_key             = "${file("~/.kube/client-key.pem")}"
 # cluster_ca_certificate = "${file("~/.kube/cluster-ca-cert.pem")}"

}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}