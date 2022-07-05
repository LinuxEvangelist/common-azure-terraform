module "common-resource-naming" {
  source = "../../modules/resource-naming"
  name_prefix   = var.name
  resource_type = "var.resource_type"
}

resource "azurerm_resource_group" "rg_az" {
  name     = "${var.name} ${module.common-resource-naming.resource-name}"
  location = var.location
  tags     = var.tags
}