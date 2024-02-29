resource "random_pet" "lb_name" {
  prefix = "lb"
}

resource "hcloud_load_balancer" "lb" {
  name               = var.name == "" ? random_pet.lb_name.id : var.name
  location           = var.location
  load_balancer_type = var.load_balancer_type
  algorithm {
    type = "least_connections"
  }
  delete_protection = var.delete_protection
}

resource "hcloud_load_balancer_network" "lb_net" {
  load_balancer_id = hcloud_load_balancer.lb.id
  subnet_id        = var.subnet_id
}
