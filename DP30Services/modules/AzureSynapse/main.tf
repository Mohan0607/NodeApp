
#Azure Synapse (Dedicated SQL Pool & Spark Pool)
resource "azurerm_storage_account" "example" {
  count = var.AzureSynapse ? 1 : 0
  name                = "${var.synapse_workspace_name}adls"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = "BlobStorage"
  tags                     = var.tags
}

resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
  count              = var.AzureSynapse ? 1 : 0
  name               = var.data_lake_gen2_filesystem
  storage_account_id = azurerm_storage_account.example[count.index].id
}

resource "azurerm_synapse_workspace" "example" {
  count                                = var.AzureSynapse ? 1 : 0
  name                = "${var.Prefix}-${var.synapse_workspace_name}-${var.environment}"
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.example[count.index].id
  sql_administrator_login              = var.synapsesql_administrator_login
  sql_administrator_login_password     = var.synapsesqldb_administrator_login_password
  tags                                 = var.tags
  identity {
    type = "SystemAssigned"
  }
  # azure_devops_repo {
  #   account_name    = var.account_name
  #   branch_name     = var.branch_name
  #   project_name    = var.project_name
  #   repository_name = var.repository_name
  #   root_folder     = var.root_folder
  # }

}

resource "azurerm_synapse_sql_pool" "example" {
  count                = var.AzureSynapse ? 1 : 0
  name                = "${var.synapse_workspace_name}sqlpool"
  synapse_workspace_id = azurerm_synapse_workspace.example[count.index].id
  sku_name             = var.sysku_name
  create_mode          = var.create_mode
  tags                 = var.tags
}

resource "azurerm_synapse_spark_pool" "example" {
  count                = var.AzureSynapse ? 1 : 0
    name                = "${var.synapse_workspace_name}sprkpl"
  synapse_workspace_id = azurerm_synapse_workspace.example[count.index].id
  node_size_family     = "MemoryOptimized"
  node_size            = var.node_size
  cache_size           = var.cache_size

  auto_scale {
    max_node_count = 50
    min_node_count = 3
  }

  auto_pause {
    delay_in_minutes = 15
  }

  library_requirement {
    content  = <<EOF
appnope==0.1.0
beautifulsoup4==4.6.3
EOF
    filename = "requirements.txt"
  }

  spark_config {
    content  = <<EOF
spark.shuffle.spill                true
EOF
    filename = "config.txt"
  }

  #tags = var.tags
}
