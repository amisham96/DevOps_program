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

variable "azurerm_subnet_prefix" {
  default     = "mytest-subnet"
  description = "Creating subnet name"
}

variable "azurerm_public_ip_prefix" {
  default     = "my-ip"
  description = "Name of the public IP"
}

variable "azurerm_linux_virtual_machine_prefix" {
  default     = "myvm"
  description = "My virtual machine name"
}

variable "azurerm_network_interface_prefix" {
  default     = "mynic"
  description = "My Network Interface"
}