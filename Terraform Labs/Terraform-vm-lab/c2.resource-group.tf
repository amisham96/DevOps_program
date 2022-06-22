resource "azurerm_resource_group" "myresource-group" {
  name     = var.azurerm_resource_group_prefix
  location = var.azurerm_resource_group_location
}