module "network" {
  source = "./modules/network"
}

module "application" {
  source = "./modules/application"

  container_name = var.app_container_name
  network_name   = module.network.network_name
  message        = var.app_message
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}

resource "docker_container" "web" {
  name  = var.web_container_name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.web_port
  }

  volumes {
    host_path      = "${path.cwd}/nginx/default.conf"
    container_path = "/etc/nginx/conf.d/default.conf"
  }

  networks_advanced {
    name = module.network.network_name
  }
}

moved {
  from = docker_network.automation_lab_network
  to   = module.network.docker_network.automation_lab_network
}
