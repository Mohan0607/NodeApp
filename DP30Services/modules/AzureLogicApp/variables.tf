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
#Azure Logic App 
# variable "lgappserviceplan" {
#   type = string
# }
# variable "app_service_plan_name" {
#   type = string
# }
variable "AzureLogicApp" {
  type = string
}
variable "size" {
  description = "name of the app_service_plan"
  default     = "WS1"
  type        = string
}
variable "tier" {
  description = "name of the app_service_plan"
  default     = "WorkflowStandard"
  type        = string
}
# variable "lgstorage_account_name" {
#   description = "name of the Storage Account"
#   type        = string
# }
variable "logic_app_name" {
  type = string
}
# variable "lgstor" {
#   type = string
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
