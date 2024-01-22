terraform {
  required_version = ">= 1.4.5"

  backend "azurerm" {
    resource_group_name  = "personal"
    storage_account_name = "pseud0r4ndom"
    container_name       = "terraform"
    key                  = "hetzner.k8s.tfstate"
  }
}
