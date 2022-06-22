resource "azurerm_virtual_network" "mytest-vnet" {
  name                = var.azurerm_virtual_network_prefix
  resource_group_name = azurerm_resource_group.myresource-group.name
  location            = azurerm_resource_group.myresource-group.location
  address_space       = ["10.0.0.0/16"]
}