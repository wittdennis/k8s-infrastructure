resource "random_pet" "node_name" {
  prefix = var.name_prefix
  count  = var.amount
}

resource "hcloud_server" "node" {
  name              = random_pet.node_name[count.index].id
  server_type       = var.server_type
  count             = var.amount
  location          = var.location
  image             = var.image
  firewall_ids      = var.firewall_ids
  ssh_keys          = hcloud_ssh_key.keys[*].id
  labels            = var.labels
  user_data         = var.user_data == "" ? null : file(var.user_data)
  delete_protection = var.delete_protection

  depends_on = [hcloud_ssh_key.keys]

  public_net {
    ipv4_enabled = var.ipv4_enabled
    ipv6_enabled = var.ipv6_enabled
  }

  lifecycle {
    ignore_changes = [
      ssh_keys,
      user_data,
      image
    ]
  }
}

resource "hcloud_server_network" "node_network" {
  subnet_id = var.subnet_id
  server_id = hcloud_server.node[count.index].id
  count     = var.subnet_id == "" ? 0 : length(hcloud_server.node)
  depends_on = [
    hcloud_server.node
  ]
}

resource "hcloud_load_balancer_target" "lb_target_node" {
  type             = "server"
  load_balancer_id = var.load_balancer_id
  server_id        = hcloud_server.node[count.index].id
  use_private_ip   = true
  count            = var.load_balancer_id == 0 ? 0 : length(hcloud_server.node)
  depends_on = [
    hcloud_server.node
  ]
}

resource "hcloud_ssh_key" "keys" {
  count      = length(var.ssh_keys)
  name       = "ssh key"
  public_key = file(var.ssh_keys[count.index])
}
