module "network" {
  source = "./modules/network"
  name   = "kubenet"
}

module "ssh_keys" {
  source   = "./modules/ssh_key"
  ssh_keys = var.ssh_keys
}

module "loadbalancer" {
  source            = "./modules/loadbalancer"
  name              = "lb-worker-0"
  subnet_id         = module.network.subnet_id
  location          = var.location
  delete_protection = true
}

module "control_nodes" {
  source            = "wittdennis/compute/hetzner"
  version           = "1.0.0"
  server_type       = "cax21"
  name_prefix       = "control"
  delete_protection = true
  image             = var.server_image
  location          = var.location
  firewall_ids      = [hcloud_firewall.firewall_control_plane.id]
  subnet_id         = module.network.subnet_id
  ssh_key_ids       = module.ssh_keys.ssh_key_ids
  count             = 1

  labels = {
    "role" : "kubernetes"
    "kubernetes-role" : "control-plane"
  }
}

module "worker_nodes" {
  source            = "wittdennis/compute/hetzner"
  version           = "1.0.0"
  server_type       = "cax21"
  name_prefix       = "worker"
  delete_protection = true
  image             = var.server_image
  location          = var.location
  firewall_ids      = [hcloud_firewall.firewall_worker.id]
  load_balancer_id  = module.loadbalancer.loadbalancer_id
  subnet_id         = module.network.subnet_id
  ssh_key_ids       = module.ssh_keys.ssh_key_ids
  count             = 2

  labels = {
    "role" : "kubernetes"
    "kubernetes-role" : "worker"
  }

  depends_on = [
    module.loadbalancer
  ]
}

module "bastion_ssh" {
  source             = "wittdennis/compute/hetzner"
  version            = "1.0.0"
  server_type        = "cax11"
  name               = "bastion-ssh"
  image              = "alma-9"
  auto_generate_name = false
  delete_protection  = true
  ipv4_enabled       = false
  ipv6_enabled       = true
  location           = var.location
  subnet_id          = module.network.subnet_id
  ssh_key_ids        = module.ssh_keys.ssh_key_ids
  firewall_ids       = [hcloud_firewall.firewall_bastion_ssh.id]
  count              = 1

  labels = {
    "role" : "bastion-host"
    "bastion-role" : "ssh"
  }
}

module "bastion_wireguard" {
  source             = "wittdennis/compute/hetzner"
  version            = "1.0.0"
  server_type        = "cax11"
  name               = "bastion-wireguard"
  image              = "wireguard"
  auto_generate_name = false
  delete_protection  = true
  ipv4_enabled       = true
  ipv6_enabled       = true
  location           = var.location
  subnet_id          = module.network.subnet_id
  ssh_key_ids        = module.ssh_keys.ssh_key_ids
  firewall_ids       = [hcloud_firewall.firewall_wireguard.id]
  count              = 1

  labels = {
    "role" : "bastion-host"
    "bastion-role" : "wireguard"
  }
}
