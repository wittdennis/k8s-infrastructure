resource "random_pet" "node_name" {
  prefix = var.name_prefix
}

resource "hcloud_server" "node" {
  name               = random_pet.node_name.id
  server_type        = var.server_type
  location           = var.location
  image              = var.image
  firewall_ids       = var.firewall_ids
  ssh_keys           = var.ssh_key_ids
  labels             = var.labels
  user_data          = var.user_data == "" ? null : file(var.user_data)
  delete_protection  = var.delete_protection
  rebuild_protection = var.delete_protection

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
  server_id = hcloud_server.node.id
  count     = var.subnet_id == "" ? 0 : 1
  depends_on = [
    hcloud_server.node
  ]
}

resource "hcloud_load_balancer_target" "lb_target_node" {
  type             = "server"
  load_balancer_id = var.load_balancer_id
  server_id        = hcloud_server.node.id
  count            = var.load_balancer_id == 0 ? 0 : 1
  use_private_ip   = true
  depends_on = [
    hcloud_server.node
  ]
}
