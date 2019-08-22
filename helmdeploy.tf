
provider "kubernetes" {
  host = "https://api.k8s-clusters.kubernetes.clearcorrect.io"
  username = "admin"
  password = "9z4bLh5wDmEasrbxFpNWaZdUFQwFQJWE"
}
provider "helm" {
    service_account = "tiller"
    namespace = "kube-system"
    
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

