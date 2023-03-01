resource "azurerm_databricks_workspace" "example" {
  count               = var.AzureDataBricks ? 1 : 0
  name                = "${var.Prefix}-${var.databricks_workspace_name}-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.dbsku
}

 
