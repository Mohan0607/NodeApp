#Prefix & Environments
variable "Prefix" {}
variable "environment" {}

variable "resource_group_name" {
  type        = string
  default =  "rg"
}

variable "location" {
  type        = string
  default =  "eastus"
}

variable "databricks_workspace_name" {
  type        = string
  default =  "databricks-test"
}

variable "dbsku" {
  type        = string
  default =  "standard"
}

variable "AzureDataBricks" {
  type        = string
}

