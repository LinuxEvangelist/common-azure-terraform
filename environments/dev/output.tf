output "resource_group_name" {
  value = module.az_resource_group.resource_group_name
}

output "vnet_address_space" {
  value = module.vnet.virtual_network_address_space
}

output "subnet_prefixes" {
  value = module.vnet.subnet_address_prefixes
}

output "public_ip_address" {
  value = azurerm_public_ip.comics.ip_address
}

output "location" {
  value = module.az_resource_group.resource_group_location
}