terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.91.0"
    }
  }
  required_version = "~> 1.2.2"
}


module "az_resource_group" {
  source = "./modules/resource_group"
}
module "az_storage" {
  source              = "./modules/storage"
  resource_group_name = module.az_resource_group.resource_group_name
  location            = module.az_resource_group.resource_group_location
}
module "vnet" {
  source = "./modules/vnet"
  resource_group_name = module.az_resource_group.resource_group_name
  location            = module.az_resource_group.resource_group_location
}

#public IP
resource "azurerm_public_ip" "comics" {
  name                = "publicIPForLB"
  location            = module.az_resource_group.resource_group_location
  resource_group_name = module.az_resource_group.resource_group_name
  allocation_method   = "Static"
}