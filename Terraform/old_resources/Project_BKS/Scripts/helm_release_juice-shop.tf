resource "helm_release" "juice" {
  name              = "juice"
  chart             = "juice-shop"
  repository        = "docker.io/bkimminich/juice-shop" 
  namespace         =  "vulnerable"
  create_namespace  = true
  wait              = true
  reset_values      = true
  max_history       = 3
}
