output "container_name" {
  description = "Name of the application container"
  value       = docker_container.app.name
}
