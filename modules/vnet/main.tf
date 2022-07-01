resource "azurerm_virtual_network" "vnet_az" {
  name                = var.vnet_name
  address_space       = var.address_space.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet_az_1" {
  for_each = var.subnets
  name                 = each.value["name"]
  address_prefixes     = each.value["address_prefixes"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet_az.name
}

