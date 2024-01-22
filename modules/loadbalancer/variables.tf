variable "name" {
  description = "The name of the load balancer"
  default     = ""
  type        = string
}

variable "location" {
  default     = "fsn1"
  description = "The datacenter the load balancer should be provisioned in"
  type        = string
}

variable "load_balancer_type" {
  default     = "lb11"
  description = "Type of the load balancer to provison"
  type        = string
}

variable "subnet_id" {
  default     = ""
  description = "Id of the subnet the load balancer should be added to"
  type        = string
}

variable "delete_protection" {
  default     = true
  description = "Controls whether the loadbalancer should be provisioned with delete protection enabled"
  type        = string
}
