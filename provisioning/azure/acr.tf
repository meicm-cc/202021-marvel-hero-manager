resource "azurerm_container_registry" "meicm" {
  name                     = "meicmcontainerregistry"
  resource_group_name      = azurerm_resource_group.meicm.name
  location                 = azurerm_resource_group.meicm.location
  sku                      = "Basic"
  admin_enabled            = false
}

output "azure_container_server" {
  value = azurerm_container_registry.meicm.login_server
}

