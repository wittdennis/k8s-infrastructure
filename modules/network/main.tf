resource "hcloud_network" "network" {
  name     = var.name == "" ? "default" : var.name
  ip_range = var.ip_range
}

resource "hcloud_network_subnet" "subnet" {
  network_id   = hcloud_network.network.id
  type         = "server"
  network_zone = var.network_zone
  ip_range     = var.subnet_ip_range
  depends_on = [
    hcloud_network.network
  ]
}
