variable "vnet_name" {
  description = "The name of the module demo resource group in which the resources will be created"
  type = string
  default = "vnet"
}
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
variable "address_space" {
  description = "A map of the tags to use for the module demo resources that are deployed"
  type        = map(any)
  default = {
      address_space = ["10.0.0.0/16"]
    }
}

variable "subnets" {
  description = "A map of the tags to use for the module demo resources that are deployed"
  type        = map(any)
  default = {
    subnet_1 ={
      name = "subnet_1"
      address_prefixes = ["10.0.2.0/24"]
    }
  }
}