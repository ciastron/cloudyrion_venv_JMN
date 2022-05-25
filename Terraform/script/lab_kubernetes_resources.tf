# JUICE-SHOP DEPLOYMENT
resource "kubernetes_deployment" "juiceshop" {
  metadata {
    name = "juiceshop-app"
    labels = {
      App = "juiceshop-app"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "juiceshop-app"
      }
    }
    template {
      metadata {
        labels = {
          App = "juiceshop-app"
        }
      }
      spec {
        container {
          image = "bkimminich/juice-shop"
          name  = "juiceshop"

          port {
            container_port = 3000
          }
        }
      }
    }
  }
}


# VAMPI DEPLOYMENT
resource "kubernetes_deployment" "vampi" {
  metadata {
    name = "vampi-app"
    labels = {
      App = "vampi-app"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "vampi-app"
      }
    }
    template {
      metadata {
        labels = {
          App = "vampi-app"
        }
      }
      spec {
        container {
          image = "mhosencloudyrion/vampi-api"
          name  = "vampi"

          port {
            container_port = 5000
          }
        }
      }
    }
  }
}