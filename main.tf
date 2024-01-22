module "network" {
  source = "./modules/network"
  name   = "kubenet"
}

module "loadbalancer" {
  source    = "./modules/loadbalancer"
  name      = "lb-worker-0"
  subnet_id = module.network.subnet_id
}
