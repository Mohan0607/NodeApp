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
#Azure Machine Learning 
variable "AzureMachineLearning" {
  type = string
}
#storage account 
variable "mlstorage_account_name" {
  description = "name of the storage acoount ,can only consist of lowercase letters and numbers"
  default     = "mlst"
}
variable "account_tier" {
  description = "which type of account tier like Standard , Premium"
  default     = "Standard"
  type        = string
}
variable "account_replication_type" {
  description = "which replication type like LRS,GRS,ZRS,GZRS"
  default     = "LRS"
  type        = string
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
  default     = "mlkvault"
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

