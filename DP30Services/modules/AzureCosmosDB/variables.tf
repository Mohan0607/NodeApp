#Prefix & Environments
variable "Prefix" {}
variable "environment" {}

# Resource Group
variable "resource_group_name" {
  type    = string
  default = "example-resources"
}

variable "location" {
  type    = string
  default = "East US"
}
variable "AzureCosmosDB" {
  type = string
}

variable "cosmos_db_name" {
  type = string
  default = "scotancosmosdb"
}

variable "mongo_server_version" {
  type = string
  default = "4.0"
}

