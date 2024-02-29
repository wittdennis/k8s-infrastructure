output "ssh_key_ids" {
  value = hcloud_ssh_key.this[*].id
}
