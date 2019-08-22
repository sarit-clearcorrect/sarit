
provider "kubernetes" {
  host = "https://api.k8s-clusters.kubernetes.clearcorrect.io"
  config_path = "/root/.kube/configfile"
}
provider "helm" {
    service_account = "tiller"
    namespace = "kube-system"
    
    }




resource "helm_release" "tomcat" {
    name      = "tomcat"
    chart     = "stable/tomcat"
    

 
}

