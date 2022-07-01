resource "azurerm_resource_group" "rg_az" {
  name     = var.name
  location = var.location
  tags     = var.tags
}