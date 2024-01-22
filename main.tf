module "loadbalancer" {
  source    = "./modules/loadbalancer"
  name      = "lb-worker-0"
  subnet_id = ""
}
