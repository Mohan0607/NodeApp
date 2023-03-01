
resource "azurerm_cosmosdb_account" "db" {
  count              = var.AzureCosmosDB ? 1 : 0
  name                = "${var.Prefix}-${var.cosmos_db_name}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "MongoDB"
  mongo_server_version = var.mongo_server_version

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  capabilities {
    name = "EnableMongo"
  }

  capabilities {
    name = "EnableServerless"
  }

  backup {
    type = "Periodic"
    interval_in_minutes = "240"
    retention_in_hours = "8"
    storage_redundancy = "Local"  
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }
}