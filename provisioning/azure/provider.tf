provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "meicm" {
  name     = "meicm"
  location = "West Europe"
}