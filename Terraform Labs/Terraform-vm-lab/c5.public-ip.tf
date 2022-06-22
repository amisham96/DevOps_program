resource "azurerm_public_ip" "my-ip" {
  name                = "my-ip"
  resource_group_name = azurerm_resource_group.myresource-group.name
  location            = azurerm_resource_group.myresource-group.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}