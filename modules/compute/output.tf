output "node_id" {
  value = hcloud_server.node[*].id
}

output "name" {
  value = hcloud_server.node[*].name
}

output "public_ipv4" {
  value = var.ipv4_enabled == false ? null : hcloud_server.node[*].ipv4_address
}

output "public_ipv6" {
  value = var.ipv6_enabled == false ? null : hcloud_server.node[*].ipv6_address
}

output "private_ip" {
  value = var.subnet_id == "" ? null : hcloud_server_network.node_network[*].ip
}
