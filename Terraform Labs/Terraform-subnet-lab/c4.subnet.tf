resource "azurerm_subnet" "mytest-subnet" {
  name                 = var.azurerm_subnet_prefix
  virtual_network_name = azurerm_virtual_network.mytest-vnet.name
  resource_group_name  = azurerm_resource_group.myresource-group.name
  address_prefixes     = ["10.0.0.0/24"]
}