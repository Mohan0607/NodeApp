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
  description = "name of the Synapse_sql_pool"
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
  default     = "spdef"
  type        = string
}

variable "node_size" {
  description = "name of the synapse_sql_pool"
  default     = "Small"
  type        = string
}
           
variable "cache_size" {
  description = "name of the synapse_sql_pool"
  default     = 100

}
variable "storage_account_name" {
  description = "name of the Storage Account"
  type        = string
}
variable "account_tier" {
  description = "The Name of the SKU used for this Storage Account. Possible values are [Standard or Premium]."
  default     = "Standard"
  type        = string
}
variable "account_kind" {
  description = "The Name of the SKU used for this Storage Account. Possible values are [Standard or Premium]."
  default     = "StorageV2"
}
variable "account_replication_type" {
  description = " type of replication to use for this storage account. LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  default     = "LRS"
  type        = string
}

variable "data_lake_gen2_filesystem" {
  default = "samplefile"
  type    = string
}
variable "create_mode" {
  description = "The Name of the create_mode used for this sql_database. Possible values are Default, Copy, OnlineSecondary, NonReadableSecondary, PointInTimeRestore, Recovery, Restore or RestoreLongTermRetentionBackup"
  default     = "Default"
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
