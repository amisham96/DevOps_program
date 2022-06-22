variable "azurerm_resource_group_prefix" {
  default     = "myresource-group"
  description = "Creating resource group name"
}

variable "azurerm_resource_group_location" {
  default     = "eastus"
  description = "Providing default resource group"
}

variable "azurerm_virtual_network_prefix" {
  default     = "mytest-vnet"
  description = "Creating Vnet Name"
}