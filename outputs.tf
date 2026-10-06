output "web_container_name" {
  description = "Name of the web container"
  value       = docker_container.web.name
}

output "app_container_name" {
  description = "Name of the application container"
  value       = module.application.container_name
}

output "web_url" {
  description = "URL of the Nginx web server"
  value       = "http://localhost:${var.web_port}"
}

output "network_name" {
  description = "Name of the Docker network"
  value       = module.network.network_name
}
