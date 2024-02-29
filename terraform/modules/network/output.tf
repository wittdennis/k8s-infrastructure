output "subnet_id" {
  value = hcloud_network_subnet.subnet.id
}

output "subnet_ip_range" {
  value = hcloud_network_subnet.subnet.ip_range
}
