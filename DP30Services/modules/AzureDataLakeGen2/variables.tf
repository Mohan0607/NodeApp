
#Prefix & Environments
variable "Prefix" {}
variable "environment" {}

# Resource Group 
variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "location" {
  description = "Azure location for Key Vault."
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
