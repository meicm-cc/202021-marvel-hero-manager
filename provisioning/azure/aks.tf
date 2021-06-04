resource "azurerm_kubernetes_cluster" "meicm" {
  name                = "meicm"
  location            = azurerm_resource_group.meicm.location
  resource_group_name = azurerm_resource_group.meicm.name
  dns_prefix          = "meicm"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.meicm.kube_config.0.client_certificate
}

output "kube_config" {
  sensitive = true
  value = azurerm_kubernetes_cluster.meicm.kube_config_raw
}