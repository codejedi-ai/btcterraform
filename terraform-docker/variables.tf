

variable "ext_port" {
  type = map(any)

  description = "this is the external port of the docker container nodered"
  # validation {
  #   condition = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) >= 0
  #   error_message = "The external port must be in the valid port range 0 - 65535."
  # }
}


variable "int_port" {
  type        = number
  default     = 1880
  description = "this is the external port of the docker container nodered"
  # validation {
  #   condition = var.int_port <= 65535 && var.int_port > 0
  #   error_message = "The internal port must be in the valid port range 0 - 65535."
  # }
}

# locals {
#     container_count = length(var.ext_port[terraform.workspace])
# }