resource "azurerm_container_registry" "meicm" {
  name                     = "meicmcontainerregistry"
  resource_group_name      = azurerm_resource_group.meicm.name
  location                 = azurerm_resource_group.meicm.location
  sku                      = "Basic"
  admin_enabled            = false
}


resource "azurerm_role_assignment" "aks_acr" {
  scope                = azurerm_container_registry.meicm.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.meicm.kubelet_identity[0].object_id
}


output "azure_container_server" {
  value = azurerm_container_registry.meicm.login_server
}

