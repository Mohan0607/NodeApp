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
# variable "storage_account_name" {
#   description = "name of the Storage Account"
#   default     = "stoacc"
#   type        = string
# }
# variable "account_tier" {
#   description = "The Name of the SKU used for this Storage Account. Possible values are [Standard or Premium]."
#   default     = "Standard"
# }
# variable "account_replication_type" {
#   description = " type of replication to use for this storage account. LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
#   default     = "LRS"
#   type        = string
# }

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


# variable "requested_service_objective_name" {
#   description = "name of the synapse_sql_pool"
#   default     = "Basic"
#   type        = string
# }

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
