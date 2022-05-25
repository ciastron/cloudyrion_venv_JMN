resource "kubernetes_service" "juiceshop" {
  metadata {
    name = "juiceshop-svc"
  }
  spec {
    selector = {
	App = "juiceshop-app"
    }
    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_service" "vampi" {
  metadata {
    name = "vampi-svc"
  }
  spec {
    selector = {
	App = "vampi-app"
    }
    port {
      port        = 80
      target_port = 5000
    }

    type = "LoadBalancer"
  }
}
