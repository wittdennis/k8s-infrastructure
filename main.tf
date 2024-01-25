module "network" {
  source = "./modules/network"
  name   = "kubenet"
}

module "loadbalancer" {
  source            = "./modules/loadbalancer"
  name              = "lb-worker-0"
  subnet_id         = module.network.subnet_id
  location          = var.location
  delete_protection = true
}

module "control_nodes" {
  source            = "./modules/compute"
  server_type       = "cax21"
  name_prefix       = "control"
  delete_protection = true
  image             = var.server_image
  location          = var.location
  firewall_ids      = [hcloud_firewall.firewall_master.id]
  load_balancer_id  = module.loadbalancer.loadbalancer_id
  subnet_id         = module.network.subnet_id
  ssh_keys          = var.ssh_keys

  labels = {
    "role" : "control-plane"
  }

  depends_on = [
    hcloud_firewall.firewall_control_plane,
    module.loadbalancer
  ]
}


