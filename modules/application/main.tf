resource "docker_image" "app" {
  name         = "hashicorp/http-echo:1.0"
  keep_locally = true
}

resource "docker_container" "app" {
  name  = var.container_name
  image = docker_image.app.image_id

  command = [
    "-text=${var.message}"
  ]

  networks_advanced {
    name = var.network_name
  }
}
