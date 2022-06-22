resource "azurerm_network_interface" "mynic" {
  name                = var.azurerm_network_interface_prefix
  location            = azurerm_resource_group.myresource-group.location
  resource_group_name = azurerm_resource_group.myresource-group.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mytest-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.my-ip.id
  }
}