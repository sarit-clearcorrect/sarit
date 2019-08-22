provider "helm" {
    kubernetes {
        host     = "https://api.k8s-clusters.kubernetes.clearcorrect.io"
        config_path = "/root/.kube/config"
       

    }
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

