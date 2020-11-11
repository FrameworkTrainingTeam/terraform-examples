
provider "azurerm" {
  client_id       = var.azure_sp_client_id
  client_secret   = var.azure_sp_client_secret
  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_tenant_id
  version         = "~> 2.34.0"
  features {}
}

