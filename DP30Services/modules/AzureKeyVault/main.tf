data "azurerm_client_config" "current" {}

#Azuure AzureKeyVault
resource "azurerm_key_vault" "AzureKeyVault" {
  count               = var.AzureKeyVault ? 1 : 0
  name                = "${var.Prefix}-${var.key_vault_name}-${var.environment}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  sku_name                    = var.sku_name
  tags                        = var.tags
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    certificate_permissions = [
      "Backup",
      "Create",
      "Delete",
      "DeleteIssuers",
      "Get",
      "Import",
      "List",
      "ListIssuers",
      "ManageContacts",
      "ManageIssuers",
      "Purge",
      "Recover",
      "Restore",
      "SetIssuers",
      "Update"
    ]

    key_permissions = [
      "Backup",
      "Create",
      "Decrypt",
      "Delete",
      "Encrypt",
      "Get",
      "Import",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Sign",
      "UnwrapKey",
      "Update",
      "Verify",
      "WrapKey",
    ]

    secret_permissions = [
      "Backup",
      "Delete",
      "Get",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Set",
    ]   
  }
}

# resource "azurerm_key_vault_access_policy" "AzureKeyVault_access_policy" {
#   count = var.AzureKeyVault ? 1 : 0
#   #count        = length(var.access_policies)
#   key_vault_id = azurerm_key_vault.AzureKeyVault[count.index].id
#   tenant_id    = data.azurerm_client_config.current.tenant_id
#   object_id    = var.access_policies[count.index].object_id

#   secret_permissions      = var.access_policies[count.index].secret_permissions
#   key_permissions         = var.access_policies[count.index].key_permissions
#   certificate_permissions = var.access_policies[count.index].certificate_permissions
#   storage_permissions     = var.access_policies[count.index].storage_permissions
# }
