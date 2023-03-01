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

# Azure Data Factory
variable "AzureDataFactory" {
  description = "name of the AzureDataFactory"
  type        = string
}

variable "factory_name" {
  description = "name of the factory_name"
  type        = string
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
