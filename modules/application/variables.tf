variable "container_name" {
  description = "Name of the application container"
  type        = string
}

variable "network_name" {
  description = "Docker network used by the application"
  type        = string
}

variable "message" {
  description = "Message returned by the application"
  type        = string
}
