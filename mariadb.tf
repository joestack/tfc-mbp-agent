resource "helm_release" "mariadb" {
  name       = "mariadb"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mariadb"
 

  set {
    name  = "rootUser.password"
    value = "1234"
  }

  set {
    name  = "db.user"
    value = "testdb"
  }
}