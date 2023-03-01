
resource "azurerm_resource_group" "rg" {
  name     = "${var.Prefix}-${var.resource_group_name}-${var.environment}"
  location = var.location
}

module "AzureVirtualNetwork" {
  source                  = "./modules/AzureVirtualNetwork"
  Prefix                  = var.Prefix
  environment             = var.environment
  resource_group_name     = azurerm_resource_group.rg.name
  location                = azurerm_resource_group.rg.location
  vnet_name               = var.vnet_name
  vnet_address_space      = [var.vnet_address_space]
  subnet_name             = var.subnet_name
  subnet_address_prefixes = [var.subnet_address_prefixes]
}
module "AzureDataLakeGen2" {
  source               = "./modules/AzureDataLakeGen2"
  AzureDataLakeGen2    = var.AzureDataLakeGen2
  storage_account_name = var.storage_account_name
  #data_lake_filesystem = var.data_lake_filesystem
  Prefix              = var.Prefix
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

}

module "AzureDataFactory" {
  source           = "./modules/AzureDataFactory"
  AzureDataFactory = var.AzureDataFactory
  factory_name     = var.factory_name
  #data_lake_filesystem = var.data_lake_filesystem
  Prefix              = var.Prefix
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location


}

module "AzureKeyVault" {
  source              = "./modules/AzureKeyVault"
  AzureKeyVault       = var.AzureKeyVault
  Prefix              = var.Prefix
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  key_vault_name      = var.key_vault_name

}

module "AzureLogicApp" {
  source         = "./modules/AzureLogicApp"
  AzureLogicApp  = var.AzureLogicApp
  logic_app_name = var.logic_app_name
  #app_service_plan_name  = var.app_service_plan_name
  #lgstorage_account_name = var.lgstorage_account_name
  Prefix              = var.Prefix
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

}

module "AzureMachineLearning" {
  source                    = "./modules/AzureMachineLearning"
  AzureMachineLearning      = var.AzureMachineLearning
  mlstorage_account_name    = var.mlstorage_account_name
  mlkey_vault_name          = var.mlkey_vault_name
  application_insights_name = var.application_insights_name
  container_registry_name   = var.container_registry_name
  container_sku             = var.container_sku
  workspace_name            = var.workspace_name
  Prefix                    = var.Prefix
  environment               = var.environment
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location

}
module "AzureSqlServer" {
  source                           = "./modules/AzureSqlServer"
  AzureSqlServer                   = var.AzureSqlServer
  sql_server_name                  = var.sql_server_name
  sql_administrator_login          = var.sql_administrator_login
  sql_administrator_login_password = var.sql_administrator_login_password
  sql_database_name                = var.sql_database_name
  sql_firewall_rule_name           = var.sql_firewall_rule_name
  Prefix                           = var.Prefix
  environment                      = var.environment
  resource_group_name              = azurerm_resource_group.rg.name
  location                         = azurerm_resource_group.rg.location

}

module "AzureSynapse" {
  source                                  = "./modules/AzureSynapse"
  AzureSynapse                            = var.AzureSynapse
  synapse_workspace_name                  = var.synapse_workspace_name
  synapsesql_administrator_login          = var.synapsesql_administrator_login
  synapsesqldb_administrator_login_password = var.synapsesqldb_administrator_login_password
  synapse_sql_pool_name                   = var.synapse_sql_pool_name
  synapse_spark_pool_name                 = var.synapse_spark_pool_name
  storage_account_name                    = var.storage_account_name
  sysku_name                              = var.sysku_name
  create_mode                             = var.create_mode
  Prefix                                  = var.Prefix
  environment                             = var.environment
  resource_group_name                     = azurerm_resource_group.rg.name
  location                                = azurerm_resource_group.rg.location

}

module "AzureStreamAnalytics" {
  source                = "./modules/AzureStreamAnalytics"
  AzureStreamAnalytics  = var.AzureStreamAnalytics
  stream_analytics_name = var.stream_analytics_name
  Prefix                = var.Prefix
  environment           = var.environment
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
}

module "AzureEventHub" {
  source              = "./modules/AzureEventHub"
  AzureEventHub       = var.AzureEventHub
  eventhub_name       = var.eventhub_name
  sku                 = var.sku
  Prefix              = var.Prefix
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

module "AzureDataBricks" {
  source                    = "./modules/AzureDataBricks"
  AzureDataBricks           = var.AzureDataBricks
  databricks_workspace_name = var.databricks_workspace_name
  Prefix                    = var.Prefix
  environment               = var.environment
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  dbsku                     = var.dbsku
}

module "AzureCosmosDB" {
  source               = "./modules/AzureCosmosDB"
  AzureCosmosDB        = var.AzureCosmosDB
  cosmos_db_name       = var.cosmos_db_name
  Prefix               = var.Prefix
  environment          = var.environment
  resource_group_name  = azurerm_resource_group.rg.name
  location             = azurerm_resource_group.rg.location
  mongo_server_version = var.mongo_server_version
}