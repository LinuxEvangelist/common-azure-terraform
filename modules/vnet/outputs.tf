# Outputs
output "virtual_network_address_space" {
  value = var.address_space.address_space
}
output "subnet_address_prefixes" {
  value = var.subnets.subnet_1.address_prefixes[0]
}