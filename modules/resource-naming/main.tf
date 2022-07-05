terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.91.0"
    }
  }
  required_version = "~> 1.2.2"
}

module "azure-resource-naming" {
  source        = "git@github.com:LinuxEvangelist/azure-resource-naming.git"
  name_prefix   = var.name_prefix
  resource_type = var.resource_type
}