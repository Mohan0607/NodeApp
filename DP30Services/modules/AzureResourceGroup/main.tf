resource "azurerm_resource_group" "rg" {
  name                     = "${var.Prefix}-${var.resource_group_name}-${var.environment}"
  location = var.location
  #tags     = var.az_tags
}