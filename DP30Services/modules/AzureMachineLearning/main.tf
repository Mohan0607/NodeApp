data "azurerm_client_config" "current" {}

#Azure Machine Learning 
resource "azurerm_application_insights" "application_insights" {
  count               = var.AzureMachineLearning ? 1 : 0
  name                = "${var.Prefix}-${var.workspace_name}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
  tags                = var.tags
}

resource "azurerm_key_vault" "key_vault" {
  count               = var.AzureMachineLearning ? 1 : 0
  name                = "${var.Prefix}-${var.workspace_name}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = var.sku_type
  purge_protection_enabled = true
  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }
  #tags = var.tags
}

resource "azurerm_storage_account" "storage_account" {
  count                    = var.AzureMachineLearning ? 1 : 0
  name                = "${var.Prefix}${var.workspace_name}${var.environment}"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier
  blob_properties {
    delete_retention_policy {
      days = var.soft_delete_retention
    }
  }
  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]
  }
  #tags = var.tags
}

resource "azurerm_container_registry" "container_registry" {
  count                         = var.AzureMachineLearning ? 1 : 0
  name                = "${var.Prefix}${var.workspace_name}${var.environment}"
  location                      = var.location
  resource_group_name           = var.resource_group_name
  sku                           = var.container_sku
  admin_enabled                 = true
  public_network_access_enabled = var.public_network_access_enabled
  #network_rule_set {
  #default_action = "Deny"
  #}
  #tags = var.tags
}

resource "azurerm_machine_learning_workspace" "workspace" {
  count                         = var.AzureMachineLearning ? 1 : 0
  name                = "${var.Prefix}-${var.workspace_name}-${var.environment}"
  location                      = var.location
  resource_group_name           = var.resource_group_name
  application_insights_id       = azurerm_application_insights.application_insights[count.index].id
  key_vault_id                  = azurerm_key_vault.key_vault[count.index].id
  storage_account_id            = azurerm_storage_account.storage_account[count.index].id
  container_registry_id         = azurerm_container_registry.container_registry[count.index].id
  public_network_access_enabled = true
  identity {
    type = var.workspace_identity
  }
  #tags = var.tags
}