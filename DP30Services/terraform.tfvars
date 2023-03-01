# # Azure Principal
# client_id       = ""
# subscription_id = ""
# tenant_id       = ""
# client_secret   = ""

# Azure Principal

client_id = "6823cbed-5135-4e02-be16-1c089f4bfbb6"
subscription_id = "791e8439-cd37-430e-b548-2c373eb03322"
tenant_id = "1540f532-8006-46ef-9e2b-c84dedd61790"
client_secret = "xEL8Q~jV3EPvhPbhlqC5xTDcIELOhlxAq~g7bcUA"
#Azure Service List
AzureDataLakeGen2    = "false"
AzureKeyVault        = "false"
AzureDataFactory     = "false"
AzureSqlServer       = "false"
AzureSynapse         = "false"
AzureEventHub        = "false"
AzureStreamAnalytics = "false"
AzureLogicApp        = "false"
AzureDataBricks      = "false"
AzureCosmosDB        = "false"
AzureMachineLearning = "false"

# Prefix & Env
Prefix      = "md"
environment = "poc"

#Azure Resource Group
location            = "East US 2"
resource_group_name = "rg"

#Azure VirtualNetwork & Subnet
vnet_name               = "vnet"
vnet_address_space      = "10.0.0.0/14"
subnet_name             = "subnet"
subnet_address_prefixes = "10.0.0.0/16"

#Azure Data Lake Gen2  Storage Account
storage_account_name = "adlsgen2"
account_tier         = "Standard"
#account_kind             = "StorageV2"
account_replication_type = "LRS"

#Azure Key Vault
key_vault_name = "kv"
sku_name       = "standard"

#Azure Data Factory
factory_name = "adf"

#Azure Sql Server
sql_server_name                  = "sqlsrv"
sql_administrator_login          = "sqladminuser"
sql_administrator_login_password = "H@Sh1CoR3!"

sql_database_name      = "db"

#Azure Synapse
synapse_workspace_name                  = "synapsews"
synapsesqldb_administrator_login          = "sqladminuser"
synapsesqldb_administrator_login_password = "H@Sh1CoR3!"

#Azure Synapse Sql Pool
sysku_name  = "DW100c"
#create_mode = "Default"

#Azure Syanpse Spark Pool
node_size = "Small"

#Azure Eventhub
sku           = "Basic"
eventhub_name = "evnthub"

#Azure Stream Analytics
stream_analytics_name = "strana"

#Azure Logic App plan
logic_app_name = "lgapp"

#Azure Data Brick
databricks_workspace_name = "dbricks"
dbsku                     = "standard"

#Azure Cosmos DB
cosmos_db_name       = "cosmosdb"
mongo_server_version = "4.0"

#Azure Machine Learning
workspace_name = "amlsws"

