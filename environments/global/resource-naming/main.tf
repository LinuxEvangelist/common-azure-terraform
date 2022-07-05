terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.91.0"
    }
  }
  required_version = "~> 1.2.2"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

module "azure-resource-naming" {
  source        = var.source_git
  version       = var.version_resource
  name_prefix   = var.name_prefix
  resource_type = var.resource_type
}