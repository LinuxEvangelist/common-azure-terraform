variable "resource_group_name" {
  description = "The name of the module demo resource group in which the resources will be created"
  type = string
  default = "example_module_rg"
}
variable "location" {
  description = "The name of the module demo resource group in which the resources will be created"
  type = string
  default = "East Us"
}
variable "account_tier" {
  description = "The location where module demo resource group will be created"
  type = string
  default = "Standard"
}
variable "account_replication_type" {
  description = "The location where module demo resource group will be created"
  type = string
  default = "LRS"
}
variable "allow_blob_public_access" {
  description = "The location where module demo resource group will be created"
  type = bool
  default = true
}
variable "tags" {
  description = "A map of the tags to use for the module demo resources that are deployed"
  type        = map(string)
  default = {
    environment = "dev"
  }
}