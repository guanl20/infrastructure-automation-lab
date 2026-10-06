variable "web_container_name" {
  description = "Name of the web container"
  type        = string
  default     = "automation_lab_web"
}

variable "web_port" {
  description = "Port exposed on the local machine for the web server"
  type        = number
  default     = 8080
}

variable "app_container_name" {
  description = "Name of the application container"
  type        = string
  default     = "automation_lab_app"
}

variable "app_message" {
  description = "Message returned by the application"
  type        = string
  default     = "Hello from the Infrastructure Automation Lab!"
}
