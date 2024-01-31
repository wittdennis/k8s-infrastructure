output "loadbalancer_ipv4" {
  value = module.loadbalancer.loadbalancer_ipv4
}

output "loadbalancer_ipv6" {
  value = module.loadbalancer.loadbalancer_ipv6
}

output "control_nodes_public_ipv4" {
  value = module.control_nodes[*].public_ipv4
}

output "control_nodes_public_ipv6" {
  value = module.control_nodes[*].public_ipv6
}

output "worker_nodes_public_ipv4" {
  value = module.worker_nodes[*].public_ipv4
}

output "worker_nodes_public_ipv6" {
  value = module.worker_nodes[*].public_ipv6
}
