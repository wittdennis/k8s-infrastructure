variable "amount" {
  type        = number
  default     = 1
  description = "Number of compute nodes to provision."
}

variable "name_prefix" {
  type        = string
  description = "The name prefix a provisioned node should have."
}

variable "server_type" {
  type        = string
  description = "Type of node to provision."
}

variable "location" {
  type        = string
  description = "The location the nodes should be provisioned in."
}

variable "image" {
  type        = string
  description = "OS image to use for the provisioned nodes."
}

variable "labels" {
  type        = map(string)
  description = "Labels to give the provisioned nodes."
  default     = {}
}

variable "ipv4_enabled" {
  type        = bool
  default     = true
  description = "Flag indicating if a ipv4 should be provisioned for the nodes."
}

variable "ipv6_enabled" {
  type        = bool
  default     = true
  description = "Flag indicating if a ipv6 should be provisioned for the nodes."
}

variable "firewall_ids" {
  type        = set(number)
  default     = []
  description = "Ids of the firewalls the nodes should be behind."
}

variable "ssh_keys" {
  type        = list(string)
  default     = []
  description = "List of ssh keys that should be added on provision."
}

variable "user_data" {
  type        = string
  default     = ""
  description = "cloud-config.yaml to automate first time setup."
}

variable "subnet_id" {
  type        = string
  description = "Id of the subnet the nodes should be added to."
  default     = ""
}

variable "load_balancer_id" {
  type        = number
  default     = 0
  description = "Id of the loadbalancer the nodes should be attached to."
}

variable "delete_protection" {
  type        = bool
  default     = false
  description = "Flag to control if the resources should have delete protection on."
}
