resource "azurerm_linux_virtual_machine" "myvm" {
  name                = var.azurerm_linux_virtual_machine_prefix
  resource_group_name = azurerm_resource_group.myresource-group.name
  location            = azurerm_resource_group.myresource-group.location
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.mynic.id
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "83-gen2"
    version   = "latest"
  }
}