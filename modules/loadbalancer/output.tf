output "loadbalancer_name" {
  value = hcloud_load_balancer.lb.name
}

output "loadbalancer_ipv4" {
  value = hcloud_load_balancer.lb.ipv4
}

output "loadbalancer_ipv6" {
  value = hcloud_load_balancer.lb.ipv6
}
