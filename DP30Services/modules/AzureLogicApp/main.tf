
#Azure Logic App plan & service
resource "azurerm_app_service_plan" "example" {
  count               = var.AzureLogicApp ? 1 : 0
  name                = "${var.Prefix}-lgplan-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  #tags = var.tags
  sku {
    tier = var.tier
    size = var.size
  }
}
resource "azurerm_storage_account" "lgstor" {
  count                    = var.AzureLogicApp ? 1 : 0
  name                     = "${var.Prefix}lgstro${var.environment}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  #tags = var.tags
}

resource "azurerm_logic_app_standard" "example" {
  count                      = var.AzureLogicApp ? 1 : 0
  name                = "${var.Prefix}-${var.logic_app_name}-${var.environment}"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.example[count.index].id
  storage_account_name       = azurerm_storage_account.lgstor[count.index].name
  storage_account_access_key = azurerm_storage_account.lgstor[count.index].primary_access_key
  #tags = var.tags
}
