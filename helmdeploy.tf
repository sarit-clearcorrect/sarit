provider "helm" {
    kubernetes {
        host     = "https://api.k8s-clusters.kubernetes.clearcorrect.io"
        username = "admin"
        password = "9z4bLh5wDmEasrbxFpNWaZdUFQwFQJWE"

    }




resource "helm_release" "mydatabase" {
    name      = "mydatabase"
    chart     = "stable/mariadb"

    set {
        name  = "mariadbUser"
        value = "foo"
    }

    set {
        name = "mariadbPassword"
        value = "qux"
    }
}

