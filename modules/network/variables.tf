variable "name" {
  type        = string
  default     = ""
  description = "The name the network should have"
}

variable "ip_range" {
  type        = string
  default     = "10.0.0.0/8"
  description = "The CIDR notation of the network"
}

variable "subnet_ip_range" {
  type        = string
  default     = "10.96.0.0/16"
  description = "The CIDR notation of the subnet must be inside the ip range of the network"
}

variable "network_zone" {
  type        = string
  default     = "eu-central"
  description = "The network zone of the subnet"
}
