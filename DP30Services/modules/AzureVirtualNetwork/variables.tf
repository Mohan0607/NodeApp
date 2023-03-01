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
# VNET
variable "vnet_name" {
  type    = string
  default = "testvnets"
}
variable "vnet_address_space" {
  default = "10.0.0.0/16"
}
# SUBNET

variable "subnet_name" {
  type    = string
  default = "defaultsubnet"
}

variable "subnet_address_prefixes" {
  default = "10.0.0.0/24"
}


variable "tags" {
  type = map(string)
  default = {
    developer     = "developer1"
    project_owner = "project_owner1"
    project       = "project1"
  }
}

# variable "subnets" {
#   type = map(any)
#   default = {
#     subnet_1 = {
#       name             = "subnet_1"
#       address_prefixes = ["10.0.0.0/24"]
#     }
#     subnet_2 = {
#       name             = "subnet_2"
#       address_prefixes = ["10.0.1.0/24"]
#     }
#     # The name must be AzureBastionSubnet
#     bastion_subnet = {
#       name             = "AzureBastionSubnet"
#       address_prefixes = ["10.13.250.0/24"]
#     }
#   }
# }
