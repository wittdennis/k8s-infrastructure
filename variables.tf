variable "hcloud_token" {
  default     = ""
  description = "Hetzner API token."
  sensitive   = true
  type        = string
}

variable "location" {
  type        = string
  default     = "fsn1"
  description = "The datacenter resources should be created at."
}

variable "server_image" {
  type        = string
  default     = "alma-9"
  description = "The image to use for new server provisioning."
}

variable "ssh_keys" {
  type        = list(string)
  description = "List of ssh keys to add to newly provisioned servers."
  default     = ["~/.ssh/id_private.pub"]
}
