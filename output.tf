output "loadbalancer_ipv4" {
  value = module.loadbalancer.loadbalancer_ipv4
}

output "loadbalancer_ipv6" {
  value = module.loadbalancer.loadbalancer_ipv6
}

output "control_nodes" {
  value = [for i, node in module.control_nodes : {
    id   = node.server_id
    name = node.name
    ipv4 = node.public_ipv4
    ipv6 = node.public_ipv6
  }]
}

output "worker_nodes" {
  value = [for i, node in module.worker_nodes : {
    id   = node.server_id
    name = node.name
    ipv4 = node.public_ipv4
    ipv6 = node.public_ipv6
  }]
}
