# Outputs
output "resource-name_prefix" {
  value = var.name_prefix
}
output "resource-resource_type" {
  value = var.resource_type
}

output "resource-name" {
  value = module.azure-resource-naming.name
}