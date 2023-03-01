#Azure Service Principal
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "subscription_id" {
  type = string
}
#Prefix & Environments
variable "Prefix" {}
variable "environment" {}


# Resource group 
variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "location" {
  description = "Azure location for Key Vault."
  type        = string
}
# #Key Vault
variable "key_vault_name" {
  description = "The location/region where the search service is created."
  default     = ""
}
variable "sku_name" {
  description = "The Name of the SKU used for this Key Vault. Possible values are \"standard\" and \"premium\"."
  type        = string
  default     = "standard"
}
variable "AzureKeyVault" {
  description = "The location/region where the search service is created."
  type        = string
}

# Azure Data Factory
variable "AzureDataFactory" {
  description = "name of the AzureDataFactory"
  type        = string
}

variable "factory_name" {
  description = "name of the factory_name"
  type        = string
}

#Azure Data Lake Gen2 Storage_account
variable "AzureDataLakeGen2" {
  description = "name of the datalakegen"
  type        = string
}
variable "storage_account_name" {
  description = "name of the Storage Account"
  type        = string
}
variable "AzureLogicApp" {
  type = string
}
# # variable "size" {
# #   description = "name of the app_service_plan"
# #   default     = "WS1"
# #   type        = string
# # }
# # variable "tier" {
# #   description = "name of the app_service_plan"
# #   default     = "WorkflowStandard"
# #   type        = string
# # }

variable "logic_app_name" {
  type = string
}

#Azure Machine Learning 
variable "AzureMachineLearning" {
  type = string
}
#storage account 
variable "mlstorage_account_name" {
  description = "name of the storage acoount ,can only consist of lowercase letters and numbers"
  default     = "mlst"
}


variable "access_tier" {
  description = "Defines the access tier for BlobStorage and StorageV2 accounts. Valid options are Hot and Cool."
  default     = "Hot"
}
variable "soft_delete_retention" {
  description = "Number of retention days for soft delete. If set to null it will disable soft delete all together."
  type        = number
  default     = 31
}

# key vault 
variable "mlkey_vault_name" {
  description = "name of the key valut "
  default     = "kvault"
  type        = string
}
variable "sku_type" {
  description = "type of sku "
  default     = "standard"
  type        = string
}
# application insights 
variable "application_insights_name" {
  description = "name of the application insights"
  default     = "mlappins"
  type        = string
}
# container registry 
variable "container_registry_name" {
  description = "which type of container registry"
  default     = "mymlcontainerr"
  type        = string
}
variable "container_sku" {
  description = "container sku like  Basic,Standard ,Premium "
  default     = "Premium"
}
variable "public_network_access_enabled" {
  description = "container Connectivity configuration"
  default     = false
}
variable "Customer_Managed_Key" {
  description = "Encryption method  like Disabled or Enabled "
  default     = "Disabled"
}
# machine learning workspace 
variable "workspace_name" {
  description = "name of the machine learning work space "
  default     = "defaultws"
  type        = string
}
variable "workspace_identity" {
  description = "work space identity type"
  default     = "SystemAssigned"
  type        = string
}

# variable "connectivity" {
#   description = "which type of Connectivity method you want ,like public or private "
#   #default = "public"
# }

# Azure Sql Server & Database
variable "AzureSqlServer" {
  type = string
}
# SQL_Server
variable "sql_server_name" {
  description = "name of the sql_server_name"
  default     = "stoacc"
  type        = string
}
variable "sql_version" {
  description = "The Name of the version for sql server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."
  default     = "12.0"
  type        = string
}

variable "sql_administrator_login" {
  description = "The Name of sql_administrator_login"
  default     = "sqladminuser"
}
variable "sql_administrator_login_password" {
  description = "sql_administrator_login_password"
  default     = "H@Sh1CoR3!"
}
# storage_account

variable "account_tier" {
  description = "The Name of the SKU used for this Storage Account. Possible values are [Standard or Premium]."
  default     = "Standard"
}
variable "account_replication_type" {
  description = " type of replication to use for this storage account. LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  default     = "LRS"
  type        = string
}
# Sql_databes
variable "sql_database_name" {
  description = "name of the sql_database_name"
  default     = "def_db"
  type        = string
}
variable "edition" {
  description = "name of the sql_database_edition ,Default. Valid values are: Basic, Standard, Premium, DataWarehouse, Business, BusinessCritical, Free, GeneralPurpose, Hyperscale, Premium, PremiumRS, Standard, Stretch, System, System2, or Web"
  default     = "Basic"
  type        = string
}
variable "collation" {
  description = "The Name of collation Possible values are Default, Azure default is SQL_LATIN1_GENERAL_CP1_CI_AS"
  default     = "SQL_LATIN1_GENERAL_CP1_CI_AS"
}
variable "create_mode" {
  description = "The Name of the create_mode used for this sql_database. Possible values are Default, Copy, OnlineSecondary, NonReadableSecondary, PointInTimeRestore, Recovery, Restore or RestoreLongTermRetentionBackup"
  default     = "Default"
}
#azurerm_sql_firewall_rule 
variable "sql_firewall_rule_name" {
  description = "The Name of the sql_firewall_rule"
  default     = "allow-azure-services"
}

variable "start_ip_address" {
  description = "The Name of the sql_firewall_rule"
  default     = "0.0.0.0"
}

variable "end_ip_address" {
  description = "The Name of the sql_firewall_rule"
  default     = "0.0.0.0"
}

#Azure synapse_workspace
variable "AzureSynapse" {
  type = string
}

variable "synapse_workspace_name" {
  description = "name of the synapse_workspace"
  default     = "default-kv"
  type        = string
}
variable "synapsesql_administrator_login" {
  description = "The Name of sql_administrator_login"
  default     = "sqladminuser"
}
variable "synapsesqldb_administrator_login_password" {
  description = "sql_administrator_login_password"
  sensitive   = true
  default     = "H@Sh1CoR3!"
}
variable "account_name" {
  description = "name of the synapse_sql_pool"
  default     = "mohandurai0006"
  type        = string
}
variable "branch_name" {
  description = "name of the synapse_sql_pool"
  default     = "main"
  type        = string
}
variable "project_name" {
  description = "name of the synapse_sql_pool"
  default     = "git"
  type        = string
}
variable "repository_name" {
  description = "name of the synapse_sql_pool"
  default     = "gitrep"
  type        = string
}
variable "root_folder" {
  description = "name of the synapse_sql_pool"
  default     = "/"
  type        = string
}
variable "synapse_sql_pool_name" {
  description = "name of the synapse_sql_pool"
  default     = "sqldef"
  type        = string
}
variable "sysku_name" {
  description = "The Name of the SKU used for this synapse_sql_pool. Possible values are DW100c, DW200c, DW300c, DW400c, DW500c, DW1000c, DW1500c, DW2000c, DW2500c, DW3000c, DW5000c, DW6000c, DW7500c, DW10000c, DW15000c or DW30000c"
  default     = "DW100c"
}
# variable "create_mode" {
#   description = "The Name of the create_mode used for this synapse_sql_pool. Possible values are Default, Recovery or PointInTimeRestore"
#   default     = "Default"
# }
variable "synapse_spark_pool_name" {
  description = "name of the synapse_sql_pool"
  default     = "sppool"
  type        = string
}

variable "node_size" {
  default = "Small"
  type    = string
}

variable "cache_size" {
  default = 100
}
#tags
variable "tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default = {
    project     = ""
    environment = ""
    owners      = ""
  }
}
variable "subnet_name" {
  type    = string
  default = "defaultsubnet"
}

variable "vnet_name" {
  type    = string
  default = "testvnet"
}
variable "subnet_address_prefixes" {
  default = "10.0.0.0/24"
}
variable "vnet_address_space" {
  default = "10.0.0.0/16"
}


variable "AzureStreamAnalytics" {
  type = string
}

variable "stream_analytics_name" {
  type = string
}


variable "AzureEventHub" {
  type = string
}

variable "sku" {
  type = string
}

variable "eventhub_name" {
  type = string
}


#DataBrick

variable "databricks_workspace_name" {
  type = string
}

variable "dbsku" {
  type    = string
  default = "standard"
}

variable "AzureDataBricks" {
  type = string
}

variable "AzureCosmosDB" {
  type = string
}

variable "cosmos_db_name" {
  type = string
}
variable "mongo_server_version" {
  type = string
}