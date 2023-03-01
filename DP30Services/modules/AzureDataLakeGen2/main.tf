#Azure Data lake gen2
resource "azurerm_storage_account" "example" {
  count                    = var.AzureDataLakeGen2 ? 1 : 0
  name                = "${var.Prefix}${var.storage_account_name}${var.environment}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  is_hns_enabled           = "true"
  tags                     = var.tags
}

resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
  count              = var.AzureDataLakeGen2 ? 1 : 0
  name               = var.data_lake_gen2_filesystem
  storage_account_id = azurerm_storage_account.example[count.index].id

  properties = {
    hello = "aGVsbG8="
  }
}

